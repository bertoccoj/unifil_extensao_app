// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterPayload _$$_RegisterPayloadFromJson(Map<String, dynamic> json) =>
    _$_RegisterPayload(
      email: json['email'] as String,
      password: json['password'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$_RegisterPayloadToJson(_$_RegisterPayload instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'displayName': instance.displayName,
    };
