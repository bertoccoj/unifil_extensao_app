import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../domain/solicitacao/filtro_solicitacoes.dart';
import '../../../domain/solicitacao/i_solicitacao_repository.dart';
import '../../../domain/solicitacao/solicitacao.dart';
import '../../../domain/solicitacao/solicitacao_failure.dart';

part 'solicitacoes_cubit.freezed.dart';
part 'solicitacoes_state.dart';

@injectable
class SolicitacoesCubit extends Cubit<SolicitacoesState> {
  final ISolicitacaoRepository _solicitacaoRepository;

  SolicitacoesCubit(this._solicitacaoRepository) : super(const SolicitacoesState.initial());

  load({FiltroSolicidacoes? filtro}) async {
    emit(const SolicitacoesState.loading());

    final result = await _solicitacaoRepository.getAll(filtro);

    result.fold(
      (l) => emit(SolicitacoesState.loadFailed(l)),
      (r) => emit(SolicitacoesState.loadSuccess(solicitacoes: r)),
    );
  }
}
