import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:minha_cidade/domain/auth/i_auth_facade.dart';

import '../../domain/solicitacao/criar_solicitacao_payload.dart';
import '../../domain/solicitacao/filtro_solicitacoes.dart';
import '../../domain/solicitacao/i_solicitacao_repository.dart';
import '../../domain/solicitacao/solicitacao.dart';
import '../../domain/solicitacao/solicitacao_failure.dart';
import '../core/apis/solicitacao/models/solicitacao_raw.dart';
import '../core/apis/solicitacao/solicitacao_api.dart';

@LazySingleton(as: ISolicitacaoRepository)
class SolicitacaoRepository implements ISolicitacaoRepository {
  final SolicitacaoApi _solicitacaoApi;
  final IAuthFacade _authFacade;

  SolicitacaoRepository(this._solicitacaoApi, this._authFacade);

  @override
  Future<Either<SolicitacaoFailure, List<Solicitacao>>> getAll(FiltroSolicidacoes? filtro) async {
    try {
      int? userId = filtro?.userId;

      if (filtro?.onlyCurrentUser ?? false) {
        final user = await _authFacade.getUser();
        userId = user.fold((l) => null, (r) => r.id);
      }

      var result = await _solicitacaoApi.index(
        bairroId: filtro?.bairro?.id,
        cidadeId: filtro?.cidade?.id,
        estadoId: filtro?.estado?.id,
        status: filtro?.status?.value,
        tipo: filtro?.tipo?.value,
        latitude: filtro?.posicao?.latitude,
        longitude: filtro?.posicao?.longitude,
        userId: userId,
      );
      if (!result.isSuccessful) {
        return left(SolicitacaoFailure.erroAoCarregarLista());
      }
      if (result.body != null) {
        final jsonList = result.body!
            .toList()
            .where(
              (element) => userId != null ? element.userId == userId : true,
            )
            .map((e) => e.toDomain())
            .toList();
        return right(jsonList);
      }
      return right([]);
    } catch (e) {
      return left(SolicitacaoFailure.erroAoCarregarLista());
    }
  }

  @override
  Future<Either<SolicitacaoFailure, Solicitacao>> getById(int id) async {
    try {
      final result = await _solicitacaoApi.details(id);

      if (result.body != null) {
        return right(result.body!.toDomain());
      }

      return left(SolicitacaoFailure.erroAoCarregarDetalhes());
    } catch (e) {
      return left(SolicitacaoFailure.erroAoCarregarDetalhes());
    }
  }

  @override
  Future<Either<SolicitacaoFailure, Unit>> create(CriarSolicitacaoPayload payload) async {
    try {
      final result = await _solicitacaoApi.add(
        payload.tipo.value,
        payload.descricao,
        payload.latitude,
        payload.longitude,
        payload.imagePath,
      );

      if (!result.isSuccessful) {
        return left(SolicitacaoFailure.erroAoCriarSolicitacao());
      }

      return right(unit);
    } catch (e) {
      print(e);
      return left(SolicitacaoFailure.erroAoCriarSolicitacao());
    }
  }
}
