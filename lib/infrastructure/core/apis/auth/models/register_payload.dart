import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_payload.freezed.dart';
part 'register_payload.g.dart';

@freezed
class RegisterPayload with _$RegisterPayload {
  const factory RegisterPayload({
    required String email,
    required String password,
    required String displayName,
  }) = _RegisterPayload;
  factory RegisterPayload.fromJson(Map<String, dynamic> json) => _$RegisterPayloadFromJson(json);
}
