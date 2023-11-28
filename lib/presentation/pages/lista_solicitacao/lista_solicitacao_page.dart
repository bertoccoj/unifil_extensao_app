import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minha_cidade/application/auth/auth/auth_bloc.dart';
import 'package:minha_cidade/domain/solicitacao/filtro_solicitacoes.dart';
import 'package:minha_cidade/presentation/core/widgets/loader.dart';
import 'package:minha_cidade/presentation/pages/filter/filter_page.dart';
import 'package:minha_cidade/presentation/router/app_router.gr.dart';

import '../../../application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart';
import '../../../application/solicitacao/solicitacoes/solicitacoes_cubit.dart';
import '../../../generated/l10n.dart';
import '../../../injection.dart';
import 'widgets/lista_solicitacao_page_body.dart';

class ListaSolicitacaoPage extends StatefulWidget implements AutoRouteWrapper {
  const ListaSolicitacaoPage({
    Key? key,
  }) : super(key: key);

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
  FiltroSolicidacoes? filtro;
  irParaCriarSolicitacao() {
    AutoRouter.of(context).push(const CriarSolicitacaoPageRoute());
  }

  void _reloadSolicitacoes() {
    context.read<SolicitacoesCubit>().load();
  }

  goToProfile() {
    context.router.push(const ProfilePageRoute());
  }

  goToFilter() {
    context.router.push<FilterResult>(FilterPageRoute(initial: filtro)).then((result) {
      if (result != null) {
        setState(() {
          if (result.delete) {
            filtro = null;
          } else {
            filtro = result.filtro;
          }
          context.read<SolicitacoesCubit>().load(filtro: filtro);
        });
      }
    });
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
        actions: [
          IconButton(
            onPressed: goToFilter,
            icon: Icon(
              Icons.filter_alt,
              color: filtro != null ? Colors.red : Colors.white,
            ),
          ),
        ],
      ),
      body: MultiBlocListener(
          listeners: [
            BlocListener<SolicitacoesCubit, SolicitacoesState>(
              listener: (context, state) {
                state.whenOrNull(
                  loading: () => showWaitLoading(),
                  loadSuccess: (_) => hideWaitLoading(),
                  loadFailed: (_) => hideWaitLoading(),
                );
              },
            ),
          ],
          child: ListSolicitacaoBody(
            onRetry: _reloadSolicitacoes,
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: irParaCriarSolicitacao,
        child: const Icon(Icons.add),
      ),
    );
  }
}
