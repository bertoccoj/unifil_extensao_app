// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raw_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RawUser _$$_RawUserFromJson(Map<String, dynamic> json) => _$_RawUser(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['createdAt'] as String),
      email: json['email'] as String,
      displayName: json['displayName'] as String,
    );

Map<String, dynamic> _$$_RawUserToJson(_$_RawUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'email': instance.email,
      'displayName': instance.displayName,
    };
