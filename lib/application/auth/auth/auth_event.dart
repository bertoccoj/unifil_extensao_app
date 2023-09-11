part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.login({
    required String email,
    required String password,
  }) = _Login;

  const factory AuthEvent.register({
    required String email,
    required String password,
    required String name,
  }) = _Register;

  const factory AuthEvent.resetPassword({
    required String email,
  }) = _ResetPassword;

  const factory AuthEvent.logout() = _Logout;
}
