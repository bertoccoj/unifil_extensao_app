import 'package:dartz/dartz.dart';
import 'package:minha_cidade/domain/solicitacao/criar_solicitacao_payload.dart';

import 'filtro_solicitacoes.dart';
import 'solicitacao.dart';
import 'solicitacao_failure.dart';

abstract class ISolicitacaoRepository {
  Future<Either<SolicitacaoFailure, List<Solicitacao>>> getAll(FiltroSolicidacoes? filtro);
  Future<Either<SolicitacaoFailure, Solicitacao>> getById(int id);
  Future<Either<SolicitacaoFailure, Unit>> create(CriarSolicitacaoPayload payload);
}
