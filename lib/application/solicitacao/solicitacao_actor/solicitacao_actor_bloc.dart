import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:minha_cidade/domain/localizacao/posicao.dart';
import 'package:minha_cidade/domain/solicitacao/criar_solicitacao_payload.dart';
import 'package:minha_cidade/domain/solicitacao/i_solicitacao_repository.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao_failure.dart';

import '../../../infrastructure/core/map_launcher.dart';

part 'solicitacao_actor_bloc.freezed.dart';
part 'solicitacao_actor_event.dart';
part 'solicitacao_actor_state.dart';

@injectable
class SolicitacaoActorBloc extends Bloc<SolicitacaoActorEvent, SolicitacaoActorState> {
  final MapLauncher _mapLauncher;
  final ISolicitacaoRepository _solicitacaoRepository;

  SolicitacaoActorBloc(this._mapLauncher, this._solicitacaoRepository) : super(const _Initial()) {
    on<AbrirNoMapa>(_handleAbrirNoMapa);
    on<CriarSolicitacao>(_handleCriarSolicitacao);
  }

  _handleAbrirNoMapa(AbrirNoMapa event, Emitter<SolicitacaoActorState> emit) async {
    emit(const SolicitacaoActorState.acaoEmProgresso());
    final result = await _mapLauncher.launch(event.posicao);
    result.fold(
      (l) => emit(SolicitacaoActorState.verNoMapaFailure(l)),
      (r) => emit(const SolicitacaoActorState.verNoMapaSuccess()),
    );
  }

  _handleCriarSolicitacao(CriarSolicitacao event, Emitter<SolicitacaoActorState> emit) async {
    emit(const SolicitacaoActorState.acaoEmProgresso());
    final result = await _solicitacaoRepository.create(event.payload);
    result.fold(
      (l) => emit(SolicitacaoActorState.criarSolicitacaoFailure(l)),
      (r) => emit(const SolicitacaoActorState.criarSolicitacaoSuccess()),
    );
  }
}
