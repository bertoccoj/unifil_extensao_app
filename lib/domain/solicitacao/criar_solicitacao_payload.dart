import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minha_cidade/domain/solicitacao/solicitacao.dart';

part 'criar_solicitacao_payload.freezed.dart';

@freezed
class CriarSolicitacaoPayload with _$CriarSolicitacaoPayload {
  const factory CriarSolicitacaoPayload({
    required ETipoSolicitacao tipo,
    required String descricao,
    required double latitude,
    required double longitude,
    required String imagePath,
  }) = _CriarSolicitacaoPayload;
}
