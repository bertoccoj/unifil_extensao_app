import 'package:flutter/material.dart';
import 'package:minha_cidade/generated/l10n.dart';
import 'package:minha_cidade/presentation/core/widgets/formated_date.dart';
import 'package:minha_cidade/presentation/core/widgets/image.dart';

import '../../../../core/contants.dart';
import '../../../../domain/solicitacao/solicitacao.dart';
import '../../../core/widgets/text.dart';

class SolicitacaoCard extends StatelessWidget {
  final void Function() onImageClick;
  final void Function() onVerDetalhesClick;

  final Solicitacao solicitacao;

  const SolicitacaoCard({
    Key? key,
    required this.solicitacao,
    required this.onImageClick,
    required this.onVerDetalhesClick,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final status = solicitacao.status;
    final tipo = solicitacao.tipo;
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 150,
            width: double.infinity,
            child: CachedImage(
              url: solicitacao.urlFoto,
              onClick: onImageClick,
            ),
          ),
          ListTile(
            title: Text(
              tipoSolicitacaoText[tipo]!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            trailing: Text(
              solicitacao.endereco,
              textAlign: TextAlign.justify,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GreyTextJustify(S.of(context).listaSolicitacaoDescricao),
                Text(
                  solicitacao.descricao,
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: FormatedDate(
              label: S.of(context).listaSolicitacaoCriadoEm,
              date: solicitacao.createdAt,
            ),
          ),
          if (solicitacao.dataPrevistaReparo != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: FormatedDate(
                label: S.of(context).listaSolicitacaoPrevisao,
                date: solicitacao.dataPrevistaReparo!,
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  S.of(context).listaSolicitacaoStatus,
                  style: const TextStyle(color: Colors.grey),
                ),
                Row(
                  children: [
                    Icon(solicitacaoStatusIcon[status], color: solicitacaoStatusColor[status]),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(solicitacaoStatusText[status]!),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Divider(),
          TextButton(
            onPressed: onVerDetalhesClick,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(S.of(context).listaSolicitacaoVerDetalhes),
                const SizedBox(width: 10),
                const Icon(Icons.read_more_rounded),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
