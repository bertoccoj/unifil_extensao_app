// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'solicitacao_raw.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SolicitacaoRaw _$$_SolicitacaoRawFromJson(Map<String, dynamic> json) =>
    _$_SolicitacaoRaw(
      id: json['id'] as int,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String?,
      tipo: json['tipo'] as int,
      status: json['status'] as int,
      userId: json['userId'] as int,
      descricao: json['descricao'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      cidade: json['cidade'] as Map<String, dynamic>,
      estado: json['estado'] as Map<String, dynamic>,
      dataPrevistaReparo: json['dataPrevistaReparo'] as String?,
      extensaoArquivo: json['extensaoArquivo'] as String,
    );

Map<String, dynamic> _$$_SolicitacaoRawToJson(_$_SolicitacaoRaw instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'tipo': instance.tipo,
      'status': instance.status,
      'userId': instance.userId,
      'descricao': instance.descricao,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'cidade': instance.cidade,
      'estado': instance.estado,
      'dataPrevistaReparo': instance.dataPrevistaReparo,
      'extensaoArquivo': instance.extensaoArquivo,
    };
