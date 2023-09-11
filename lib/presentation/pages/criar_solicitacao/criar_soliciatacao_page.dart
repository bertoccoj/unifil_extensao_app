import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minha_cidade/generated/l10n.dart';
import 'package:minha_cidade/presentation/core/widgets/loader.dart';
import 'package:minha_cidade/presentation/core/widgets/snack_bar.dart';
import 'package:minha_cidade/presentation/pages/criar_solicitacao/widgets/criar_colicitacao_page_body.dart';

import '../../../application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart';
import '../../../injection.dart';

class CriarSolicitacaoPage extends StatefulWidget implements AutoRouteWrapper {
  const CriarSolicitacaoPage({Key? key}) : super(key: key);

  @override
  State<CriarSolicitacaoPage> createState() => _CriarSolicitacaoPageState();

  @override
  Widget wrappedRoute(_) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SolicitacaoActorBloc>(
          create: (_) => getIt<SolicitacaoActorBloc>(),
        ),
      ],
      child: this,
    );
  }
}

class _CriarSolicitacaoPageState extends State<CriarSolicitacaoPage> with Loader, SnackBarHelper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).criarSolicitacaoHeader)),
      body: BlocListener<SolicitacaoActorBloc, SolicitacaoActorState>(
        listener: (context, state) {
          state.whenOrNull(
            acaoEmProgresso: () => showWaitLoading(),
            criarSolicitacaoFailure: (failure) {
              showSnackBar(text: failure.titulo);
              hideWaitLoading();
            },
            verNoMapaFailure: (failure) {
              showSnackBar(text: failure.titulo);
              hideWaitLoading();
            },
            criarSolicitacaoSuccess: () {
              showSnackBar(text: 'Solicitação criada com sucesso');
              AutoRouter.of(context).pop();
              return hideWaitLoading();
            },
          );
        },
        child: const CriarSolicitacaoPageBody(),
      ),
    );
  }
}
