import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:minha_cidade/application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart';
import 'package:minha_cidade/core/contants.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao.dart';
import 'package:minha_cidade/presentation/core/widgets/failure_viewer.dart';
import 'package:minha_cidade/presentation/core/widgets/image.dart';
import 'package:minha_cidade/presentation/core/widgets/outline_button.dart';

import '../../../../application/solicitacao/solicitacao_detalhada/solicitacao_detalhada_cubit.dart';
import '../../../../generated/l10n.dart';
import '../../../core/widgets/formated_date.dart';
import '../../../core/widgets/text.dart';
import '../../../router/app_router.gr.dart';

class DetalhesSolicitacaoPageBody extends StatelessWidget {
  const DetalhesSolicitacaoPageBody({Key? key}) : super(key: key);

  onVerLocalizacaoClick(BuildContext context, Solicitacao solicitacao) {
    BlocProvider.of<SolicitacaoActorBloc>(context).add(
      SolicitacaoActorEvent.abrirNoMapa(solicitacao.posicao),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SolicitacaoDetalhadaCubit, SolicitacaoDetalhadaState>(
      builder: (_, state) {
        return state.when(
          initial: () => Container(),
          loading: () => const CircularProgressIndicator(),
          loadSuccess: (solicitacao) => _LoadSuccessBody(
            solicitacao: solicitacao,
            onVerLocalizacaoClick: () => onVerLocalizacaoClick(context, solicitacao),
          ),
          loadFailed: (failure) => FailureViewer(failure: failure),
        );
      },
    );
  }
}

class _LoadSuccessBody extends StatefulWidget {
  final void Function() onVerLocalizacaoClick;
  final Solicitacao solicitacao;

  const _LoadSuccessBody({
    Key? key,
    required this.solicitacao,
    required this.onVerLocalizacaoClick,
  }) : super(key: key);

  @override
  State<_LoadSuccessBody> createState() => _LoadSuccessBodyState();
}

class _LoadSuccessBodyState extends State<_LoadSuccessBody> {
  verFoto() {
    AutoRouter.of(context).push(
      VerFotoPageRoute(provider: CachedNetworkImageProvider(widget.solicitacao.urlFoto)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        GestureDetector(
          onTap: verFoto,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20), // Image border
            child: SizedBox(
              height: 300,
              width: double.infinity,
              child: CachedImage(url: widget.solicitacao.urlFoto),
            ),
          ),
        ),
        TextTile(title: 'Endereço', body: widget.solicitacao.endereco),
        OutlineButton(
          onPressed: widget.onVerLocalizacaoClick,
          label: 'Ver localização no mapa',
          padding: const EdgeInsets.only(bottom: 16),
        ),
        FormatedDate(
          labelColor: Colors.black,
          label: S.of(context).listaSolicitacaoCriadoEm,
          date: widget.solicitacao.createdAt,
        ),
        if (widget.solicitacao.dataPrevistaReparo != null)
          FormatedDate(
            label: S.of(context).listaSolicitacaoPrevisao,
            date: widget.solicitacao.dataPrevistaReparo!,
          ),
        TextTile(
          title: 'Tipo',
          body: tipoSolicitacaoText[widget.solicitacao.tipo]!,
        ),
        TextTile(
          title: 'Descrição',
          body: widget.solicitacao.descricao,
        ),
        TextTile(
          title: 'Status',
          body: solicitacaoStatusText[widget.solicitacao.status]!,
        ),
      ],
    );
  }
}
