import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minha_cidade/application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart';
import 'package:minha_cidade/presentation/pages/lista_solicitacao/widgets/solicitacao_card.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../../../application/solicitacao/solicitacoes/solicitacoes_cubit.dart';
import '../../../../domain/localizacao/posicao.dart';
import '../../../../domain/solicitacao/solicitacao.dart';
import '../../../core/widgets/failure_viewer.dart';
import '../../../router/app_router.gr.dart';

class ListSolicitacaoBody extends StatelessWidget {
  final void Function() onRetry;

  const ListSolicitacaoBody({Key? key, required this.onRetry}) : super(key: key);

  _onRefresh(RefreshController controller) {
    onRetry();
    controller.refreshCompleted();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SolicitacoesCubit, SolicitacoesState>(
      builder: (ctx, state) {
        return state.when(
          initial: () => Container(),
          loading: () => const Center(child: CircularProgressIndicator()),
          loadSuccess: (solicitacoes) => solicitacoes.isEmpty
              ? NenhumaSolicitacaoEncontrada(
                  onRefresh: _onRefresh,
                )
              : SolicitacoesListView(
                  solicitacoes: solicitacoes,
                  onRefresh: _onRefresh,
                ),
          loadFailed: (failure) => FailureViewer(
            failure: failure,
            onRetry: onRetry,
          ),
        );
      },
    );
  }
}

class SolicitacoesListView extends StatefulWidget {
  final void Function(RefreshController controller) onRefresh;
  final List<Solicitacao> solicitacoes;

  const SolicitacoesListView({
    Key? key,
    required this.solicitacoes,
    required this.onRefresh,
  }) : super(key: key);

  @override
  State<SolicitacoesListView> createState() => _SolicitacoesListViewState();
}

class _SolicitacoesListViewState extends State<SolicitacoesListView> {
  final _refreshController = RefreshController(initialRefresh: false);

  verFoto(BuildContext context, String url) {
    AutoRouter.of(context).push(
      VerFotoPageRoute(provider: CachedNetworkImageProvider(url)),
    );
  }

  abirNoMapa(BuildContext context, Posicao posicao) {
    BlocProvider.of<SolicitacaoActorBloc>(context).add(SolicitacaoActorEvent.abrirNoMapa(posicao));
  }

  irParaDetalhesSolicitacao(BuildContext context, int id) {
    AutoRouter.of(context).push(DetalhesSolicitacaoPageRoute(solicitacaoId: id));
  }

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: false,
      onRefresh: () => widget.onRefresh(_refreshController),
      controller: _refreshController,
      child: ListView.builder(
        itemCount: widget.solicitacoes.length,
        itemBuilder: (context, index) => SolicitacaoCard(
          key: ValueKey(widget.solicitacoes[index].id + widget.solicitacoes[index].hashCode),
          solicitacao: widget.solicitacoes[index],
          onImageClick: () => verFoto(context, widget.solicitacoes[index].urlFoto),
          onVerDetalhesClick: () => irParaDetalhesSolicitacao(context, widget.solicitacoes[index].id),
        ),
      ),
    );
  }
}

class NenhumaSolicitacaoEncontrada extends StatefulWidget {
  final void Function(RefreshController controller) onRefresh;

  const NenhumaSolicitacaoEncontrada({Key? key, required this.onRefresh}) : super(key: key);

  @override
  State<NenhumaSolicitacaoEncontrada> createState() => _NenhumaSolicitacaoEncontradaState();
}

class _NenhumaSolicitacaoEncontradaState extends State<NenhumaSolicitacaoEncontrada> {
  final _refreshController = RefreshController(initialRefresh: false);

  @override
  Widget build(BuildContext context) {
    return SmartRefresher(
      enablePullDown: true,
      enablePullUp: true,
      onRefresh: () => widget.onRefresh(_refreshController),
      controller: _refreshController,
      child: const Center(
        child: Text('Nenhuma solicitação encontrada'),
      ),
    );
  }
}
