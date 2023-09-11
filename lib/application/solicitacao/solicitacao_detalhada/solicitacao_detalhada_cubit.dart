import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao_failure.dart';

import '../../../domain/solicitacao/i_solicitacao_repository.dart';

part 'solicitacao_detalhada_cubit.freezed.dart';
part 'solicitacao_detalhada_state.dart';

@injectable
class SolicitacaoDetalhadaCubit extends Cubit<SolicitacaoDetalhadaState> {
  final ISolicitacaoRepository _solicitacaoRepository;

  SolicitacaoDetalhadaCubit(this._solicitacaoRepository) : super(const SolicitacaoDetalhadaState.initial());

  load(int id) async {
    final result = await _solicitacaoRepository.getById(id);

    result.fold(
      (l) => emit(SolicitacaoDetalhadaState.loadFailed(l)),
      (r) => emit(SolicitacaoDetalhadaState.loadSuccess(r)),
    );
  }
}
