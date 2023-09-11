part of 'solicitacao_detalhada_cubit.dart';

@freezed
class SolicitacaoDetalhadaState with _$SolicitacaoDetalhadaState {
  const factory SolicitacaoDetalhadaState.initial() = _Initial;
  const factory SolicitacaoDetalhadaState.loading() = _Loading;
  const factory SolicitacaoDetalhadaState.loadSuccess(Solicitacao solicitacao) = _LoadSuccess;
  const factory SolicitacaoDetalhadaState.loadFailed(SolicitacaoFailure failure) = _LoadFailed;
}
