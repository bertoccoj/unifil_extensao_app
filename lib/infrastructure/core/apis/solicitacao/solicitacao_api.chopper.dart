// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitacao_api.dart';

// **************************************************************************
// ChopperGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line, always_specify_types, prefer_const_declarations, unnecessary_brace_in_string_interps
class _$SolicitacaoApi extends SolicitacaoApi {
  _$SolicitacaoApi([ChopperClient? client]) {
    if (client == null) return;
    this.client = client;
  }

  @override
  final definitionType = SolicitacaoApi;

  @override
  Future<Response<List<SolicitacaoRaw>>> list({
    int? tipo,
    int? status,
    double? latitude,
    double? longitude,
    int? bairroId,
    int? cidadeId,
    int? estadoId,
    int? userId,
  }) {
    final String $url = '/solicitacao';
    final Map<String, dynamic> $params = <String, dynamic>{
      'tipo': tipo,
      'status': status,
      'latitude': latitude,
      'longitude': longitude,
      'bairroId': bairroId,
      'cidadeId': cidadeId,
      'estadoId': estadoId,
      'userId': userId,
    };
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
      parameters: $params,
    );
    return client.send<List<SolicitacaoRaw>, SolicitacaoRaw>($request);
  }

  @override
  Future<Response<SolicitacaoRaw>> details(int id) {
    final String $url = '/solicitacao/${id}';
    final Request $request = Request(
      'GET',
      $url,
      client.baseUrl,
    );
    return client.send<SolicitacaoRaw, SolicitacaoRaw>($request);
  }

  @override
  Future<Response<dynamic>> add(
    int tipo,
    String descricao,
    double latitude,
    double longitude,
    String image,
  ) {
    final String $url = '/solicitacao';
    final Map<String, String> $headers = {
      'Content-Type': 'application/x-www-form-urlencoded',
    };
    final List<PartValue> $parts = <PartValue>[
      PartValue<int>(
        'tipo',
        tipo,
      ),
      PartValue<String>(
        'descricao',
        descricao,
      ),
      PartValue<double>(
        'latitude',
        latitude,
      ),
      PartValue<double>(
        'longitude',
        longitude,
      ),
      PartValueFile<String>(
        'image',
        image,
      ),
    ];
    final Request $request = Request(
      'POST',
      $url,
      client.baseUrl,
      parts: $parts,
      multipart: true,
      headers: $headers,
    );
    return client.send<dynamic, dynamic>($request);
  }
}
