import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minha_cidade/domain/auth/user.dart';

part 'raw_user.freezed.dart';
part 'raw_user.g.dart';

@freezed
class RawUser with _$RawUser {
  factory RawUser({
    required int id,
    required DateTime createdAt,
    required String email,
    required String displayName,
  }) = _RawUser;

  factory RawUser.fromJson(Map<String, dynamic> json) => _$RawUserFromJson(json);
}

extension RawUserX on RawUser {
  User toDomain() => User(
        id: id,
        email: email,
        name: displayName,
      );
}
