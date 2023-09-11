import 'package:freezed_annotation/freezed_annotation.dart';

import '../localizacao/bairro.dart';
import '../localizacao/cidade.dart';
import '../localizacao/estado.dart';
import '../localizacao/posicao.dart';
import 'solicitacao.dart';

part 'filtro_solicitacoes.freezed.dart';

@freezed
class FiltroSolicidacoes with _$FiltroSolicidacoes {
  const factory FiltroSolicidacoes({
    ETipoSolicitacao? tipo,
    EStatusSolicitacao? status,
    Posicao? posicao,
    Bairro? bairro,
    Cidade? cidade,
    Estado? estado,
    int? userId,
    bool? onlyCurrentUser,
  }) = _FiltroSolicidacoes;
}
