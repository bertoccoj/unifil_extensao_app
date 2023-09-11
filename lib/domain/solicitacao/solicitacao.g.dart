// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitacao.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Solicitacao _$$_SolicitacaoFromJson(Map<String, dynamic> json) =>
    _$_Solicitacao(
      id: json['id'] as int,
      tipo: $enumDecode(_$ETipoSolicitacaoEnumMap, json['tipo']),
      status: $enumDecode(_$EStatusSolicitacaoEnumMap, json['status']),
      urlFoto: json['urlFoto'] as String,
      descricao: json['descricao'] as String,
      posicao: Posicao.fromJson(json['posicao'] as Map<String, dynamic>),
      cidade: Cidade.fromJson(json['cidade'] as Map<String, dynamic>),
      estado: Estado.fromJson(json['estado'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      dataPrevistaReparo: json['dataPrevistaReparo'] == null
          ? null
          : DateTime.parse(json['dataPrevistaReparo'] as String),
    );

Map<String, dynamic> _$$_SolicitacaoToJson(_$_Solicitacao instance) =>
    <String, dynamic>{
      'id': instance.id,
      'tipo': _$ETipoSolicitacaoEnumMap[instance.tipo]!,
      'status': _$EStatusSolicitacaoEnumMap[instance.status]!,
      'urlFoto': instance.urlFoto,
      'descricao': instance.descricao,
      'posicao': instance.posicao,
      'cidade': instance.cidade,
      'estado': instance.estado,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'dataPrevistaReparo': instance.dataPrevistaReparo?.toIso8601String(),
    };

const _$ETipoSolicitacaoEnumMap = {
  ETipoSolicitacao.buraco: 'buraco',
  ETipoSolicitacao.iluminacaoPublica: 'iluminacaoPublica',
  ETipoSolicitacao.esgoto: 'esgoto',
  ETipoSolicitacao.outros: 'outros',
};

const _$EStatusSolicitacaoEnumMap = {
  EStatusSolicitacao.aguardandoAnalise: 'aguardandoAnalise',
  EStatusSolicitacao.aguardandoReparo: 'aguardandoReparo',
  EStatusSolicitacao.concluido: 'concluido',
  EStatusSolicitacao.reparoRecusado: 'reparoRecusado',
};
