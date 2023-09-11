part of 'solicitacao_actor_bloc.dart';

@freezed
class SolicitacaoActorEvent with _$SolicitacaoActorEvent {
  const factory SolicitacaoActorEvent.abrirNoMapa(Posicao posicao) = AbrirNoMapa;
  const factory SolicitacaoActorEvent.criarSolicitacao(CriarSolicitacaoPayload payload) = CriarSolicitacao;
}
