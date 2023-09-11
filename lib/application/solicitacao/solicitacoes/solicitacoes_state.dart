part of 'solicitacoes_cubit.dart';

@freezed
class SolicitacoesState with _$SolicitacoesState {
  const factory SolicitacoesState.initial() = _Initial;
  const factory SolicitacoesState.loading() = _Loading;
  const factory SolicitacoesState.loadSuccess({required List<Solicitacao> solicitacoes}) = _LoadSuccess;
  const factory SolicitacoesState.loadFailed(SolicitacaoFailure failure) = _LoadFailed;
}
