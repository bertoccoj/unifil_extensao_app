import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:minha_cidade/core/i_failure.dart';

part 'auth_failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure implements IFailure {
  AuthFailure._();

  factory AuthFailure.wrongCredentials() = WrongCredentials;
  factory AuthFailure.unexpected() = Unexpected;
  factory AuthFailure.registrationFailed([String? reason]) = RegistrationFailed;

  @override
  String get descricao => when(
        wrongCredentials: () => 'Credenciais invalidas',
        unexpected: () => 'Erro inexperado',
        registrationFailed: (reson) => reson ?? 'Falha no cadastro',
      );

  @override
  String get titulo => when(
        wrongCredentials: () => 'Credenciais invalidas',
        unexpected: () => 'Erro inexperado',
        registrationFailed: (reson) => reson ?? 'Falha no cadastro',
      );
}
