import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minha_cidade/core/config_reader.dart';
import 'package:minha_cidade/domain/localizacao/cidade.dart';
import 'package:minha_cidade/domain/localizacao/estado.dart';
import 'package:minha_cidade/domain/localizacao/posicao.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao.dart';

part 'solicitacao_raw.freezed.dart';
part 'solicitacao_raw.g.dart';

@freezed
class SolicitacaoRaw with _$SolicitacaoRaw {
  const factory SolicitacaoRaw({
    required int id,
    required String createdAt,
    String? updatedAt,
    required int tipo,
    required int status,
    required int userId,
    required String descricao,
    required double latitude,
    required double longitude,
    required Map<String, dynamic> cidade,
    required Map<String, dynamic> estado,
    String? dataPrevistaReparo,
    required String extensaoArquivo,
  }) = _SolicitacaoRaw;

  factory SolicitacaoRaw.fromJson(Map<String, dynamic> json) => _$SolicitacaoRawFromJson(json);
}

extension SolicitacaoRawX on SolicitacaoRaw {
  Solicitacao toDomain() {
    return Solicitacao(
      id: id,
      urlFoto: ConfigReader.fotoSolicitacao(id, extensaoArquivo),
      tipo: ETipoSolicitacao.values.firstWhere((element) => element.value == tipo),
      status: EStatusSolicitacao.values.firstWhere((element) => element.value == status),
      descricao: descricao,
      posicao: Posicao(latitude: latitude, longitude: longitude),
      cidade: Cidade.fromJson(cidade),
      estado: Estado.fromJson(estado),
      createdAt: DateTime.parse(createdAt),
      updatedAt: updatedAt != null ? DateTime.parse(updatedAt!) : null,
      dataPrevistaReparo: dataPrevistaReparo != null ? DateTime.parse(dataPrevistaReparo!) : null,
    );
  }
}
