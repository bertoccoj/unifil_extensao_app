part of 'solicitacao_actor_bloc.dart';

@freezed
class SolicitacaoActorState with _$SolicitacaoActorState {
  const factory SolicitacaoActorState.initial() = _Initial;
  const factory SolicitacaoActorState.acaoEmProgresso() = _AcaoEmProgresso;
  const factory SolicitacaoActorState.verNoMapaSuccess() = _VerNoMapaSuccess;
  const factory SolicitacaoActorState.verNoMapaFailure(SolicitacaoFailure failure) = _VerNoMapaFailure;
  const factory SolicitacaoActorState.criarSolicitacaoSuccess() = _CriarSolicitacaoSuccess;
  const factory SolicitacaoActorState.criarSolicitacaoFailure(SolicitacaoFailure failure) = _CriarSolicitacaoFailure;
}
