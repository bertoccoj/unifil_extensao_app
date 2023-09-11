import 'package:flutter/material.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao.dart';
import 'package:minha_cidade/generated/l10n.dart';

final tipoSolicitacaoText = {
  ETipoSolicitacao.buraco: S.current.eTipoSolicitacaoBuraco,
  ETipoSolicitacao.iluminacaoPublica: S.current.eTipoSolicitacaoIluminacaoPublica,
  ETipoSolicitacao.esgoto: S.current.eTipoSolicitacaoEsgoto,
  ETipoSolicitacao.outros: S.current.eTipoSolicitacaoOutros,
};

final solicitacaoStatusText = {
  EStatusSolicitacao.aguardandoAnalise: S.current.eStatusSolicitacaoAguardandoAnalise,
  EStatusSolicitacao.aguardandoReparo: S.current.eStatusSolicitacaoAguardandoReparo,
  EStatusSolicitacao.reparoRecusado: S.current.eStatusSolicitacaoReparoRecusado,
  EStatusSolicitacao.concluido: S.current.eStatusSolicitacaoConcluido,
};

final solicitacaoStatusIcon = {
  EStatusSolicitacao.aguardandoAnalise: Icons.watch_later_outlined,
  EStatusSolicitacao.aguardandoReparo: Icons.watch_later_outlined,
  EStatusSolicitacao.reparoRecusado: Icons.warning,
  EStatusSolicitacao.concluido: Icons.check,
};

final solicitacaoStatusColor = {
  EStatusSolicitacao.aguardandoAnalise: Colors.yellow[900],
  EStatusSolicitacao.aguardandoReparo: Colors.grey,
  EStatusSolicitacao.reparoRecusado: Colors.red,
  EStatusSolicitacao.concluido: Colors.green,
};
