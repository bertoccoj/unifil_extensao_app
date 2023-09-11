import 'package:freezed_annotation/freezed_annotation.dart';

import '../localizacao/cidade.dart';
import '../localizacao/estado.dart';
import '../localizacao/posicao.dart';

part 'solicitacao.freezed.dart';
part 'solicitacao.g.dart';

enum ETipoSolicitacao {
  buraco(1),
  iluminacaoPublica(2),
  esgoto(3),
  outros(4);

  const ETipoSolicitacao(this.value);
  final int value;
}

enum EStatusSolicitacao {
  aguardandoAnalise(1),
  aguardandoReparo(2),
  concluido(3),
  reparoRecusado(4);

  const EStatusSolicitacao(this.value);
  final int value;
}

@freezed
abstract class Solicitacao with _$Solicitacao {
  const factory Solicitacao({
    required int id,
    required ETipoSolicitacao tipo,
    required EStatusSolicitacao status,
    required String urlFoto,
    required String descricao,
    required Posicao posicao,
    required Cidade cidade,
    required Estado estado,
    required DateTime createdAt,
    DateTime? updatedAt,
    DateTime? dataPrevistaReparo,
  }) = _Solicitacao;

  factory Solicitacao.fromJson(Map<String, dynamic> json) => _$SolicitacaoFromJson(json);
}

extension SolicitacaoX on Solicitacao {
  get endereco {
    return '${cidade.nome}/${estado.nome}';
  }
}
