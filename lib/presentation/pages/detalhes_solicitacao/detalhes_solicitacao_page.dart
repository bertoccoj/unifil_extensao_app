import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minha_cidade/generated/l10n.dart';
import 'package:minha_cidade/presentation/core/widgets/snack_bar.dart';
import 'package:minha_cidade/presentation/pages/detalhes_solicitacao/widgets/detalhes_solicitacao_page_body.dart';

import '../../../application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart';
import '../../../application/solicitacao/solicitacao_detalhada/solicitacao_detalhada_cubit.dart';
import '../../../injection.dart';

class DetalhesSolicitacaoPage extends StatefulWidget implements AutoRouteWrapper {
  final int solicitacaoId;

  const DetalhesSolicitacaoPage({Key? key, required this.solicitacaoId}) : super(key: key);

  @override
  State<DetalhesSolicitacaoPage> createState() => _DetalhesSolicitacaoPageState();

  @override
  Widget wrappedRoute(context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SolicitacaoDetalhadaCubit>(
          create: (_) => getIt<SolicitacaoDetalhadaCubit>()..load(solicitacaoId),
        ),
        BlocProvider<SolicitacaoActorBloc>(
          create: (_) => getIt<SolicitacaoActorBloc>(),
        ),
      ],
      child: this,
    );
  }
}

class _DetalhesSolicitacaoPageState extends State<DetalhesSolicitacaoPage> with WidgetsBindingObserver, SnackBarHelper {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).detalhesSolicitacaoHeader),
      ),
      body: BlocListener<SolicitacaoActorBloc, SolicitacaoActorState>(
        listener: (_, state) {
          state.whenOrNull(
            verNoMapaFailure: (failure) => showSnackBar(text: failure.titulo),
          );
        },
        child: const DetalhesSolicitacaoPageBody(),
      ),
    );
  }
}
