part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = _Initial;
  const factory AuthState.loading() = _Loading;
  const factory AuthState.loginSuccess() = _LoginSuccess;
  const factory AuthState.loginFailed(IFailure failure) = _LoginFailed;
  const factory AuthState.registerSuccess() = _RegisterSuccess;
  const factory AuthState.registerFailed(IFailure failure) = _RegisterFailed;
  const factory AuthState.resetPasswordSuccess() = _ResetPasswordSuccess;
  const factory AuthState.resetPasswordFailed(IFailure failure) = _ResetPasswordFailed;
  const factory AuthState.logoutSuccess() = _LogoutSuccess;
  const factory AuthState.logoutFailed(IFailure failure) = _LogoutFailed;
}
