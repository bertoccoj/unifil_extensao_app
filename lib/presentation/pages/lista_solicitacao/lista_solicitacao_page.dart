import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minha_cidade/application/auth/auth/auth_bloc.dart';
import 'package:minha_cidade/domain/solicitacao/filtro_solicitacoes.dart';
import 'package:minha_cidade/presentation/core/widgets/loader.dart';
import 'package:minha_cidade/presentation/router/app_router.gr.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

import '../../../application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart';
import '../../../application/solicitacao/solicitacoes/solicitacoes_cubit.dart';
import '../../../generated/l10n.dart';
import '../../../injection.dart';
import 'widgets/lista_solicitacao_page_body.dart';

class ListaSolicitacaoPage extends StatefulWidget implements AutoRouteWrapper {
  const ListaSolicitacaoPage({Key? key}) : super(key: key);

  @override
  State<ListaSolicitacaoPage> createState() => _ListaSolicitacaoPageState();

  @override
  Widget wrappedRoute(_) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SolicitacoesCubit>(
          create: (_) => getIt<SolicitacoesCubit>()..load(),
        ),
        BlocProvider<SolicitacaoActorBloc>(
          create: (_) => getIt<SolicitacaoActorBloc>(),
        ),
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>(),
        ),
      ],
      child: this,
    );
  }
}

class _ListaSolicitacaoPageState extends State<ListaSolicitacaoPage> with Loader {
  bool _onlyUser = false;

  irParaCriarSolicitacao() {
    AutoRouter.of(context).push(const CriarSolicitacaoPageRoute());
  }

  void _onRefresh(RefreshController controller) async {
    BlocProvider.of<SolicitacoesCubit>(context).load();
    controller.refreshCompleted();
  }

  goToProfile() {
    context.router.push(const ProfilePageRoute());
  }

  toggleUserOnly(bool value) {
    setState(() {
      _onlyUser = value;
    });
    context.read<SolicitacoesCubit>().load(
          filtro: FiltroSolicidacoes(
            onlyCurrentUser: _onlyUser,
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            child: IconButton(
              onPressed: goToProfile,
              icon: const Icon(Icons.person_outline),
            ),
          ),
        ),
        title: Text(S.of(context).listaSolicitacaoHeader),
        actions: [],
      ),
      body: BlocListener<SolicitacoesCubit, SolicitacoesState>(
        listener: (context, state) {
          state.whenOrNull(
            loading: () => showWaitLoading(),
            loadSuccess: (_) => hideWaitLoading(),
            loadFailed: (_) => hideWaitLoading(),
          );
        },
        child: ListSolicitacaoBody(
          onRefresh: _onRefresh,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: irParaCriarSolicitacao,
        child: const Icon(Icons.add),
      ),
    );
  }
}
