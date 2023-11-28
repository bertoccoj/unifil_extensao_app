import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:minha_cidade/core/i_failure.dart';
import 'package:minha_cidade/domain/auth/i_auth_facade.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthFacade _authFacade;

  AuthBloc(this._authFacade) : super(const _Initial()) {
    on<_Login>(_handleLogin);
    on<_Logout>(_handleLogout);
    on<_Register>(_handleRegister);
    on<_ResetPassword>(_handleResetPassword);
    on<_Authenticate>(_handleAuthenticate);
  }

  _handleLogin(_Login event, Emitter emit) async {
    final result = await _authFacade.login(
      email: event.email,
      password: event.password,
    );
    result.fold(
      (l) => emit(AuthState.loginFailed(l)),
      (r) => emit(const AuthState.loginSuccess()),
    );
  }

  _handleLogout(_Logout event, Emitter emit) async {
    final result = await _authFacade.logout();
    result.fold(
      (l) => emit(AuthState.logoutFailed(l)),
      (r) => emit(const AuthState.logoutSuccess()),
    );
  }

  _handleRegister(_Register event, Emitter emit) async {
    final result = await _authFacade.register(
      email: event.email,
      name: event.name,
      password: event.password,
    );
    result.fold(
      (l) => emit(AuthState.registerFailed(l)),
      (r) => emit(const AuthState.registerSuccess()),
    );
  }

  _handleResetPassword(_ResetPassword event, Emitter emit) async {
    final result = await _authFacade.resetPassword(
      email: event.email,
    );

    result.fold(
      (l) => emit(AuthState.resetPasswordFailed(l)),
      (r) => emit(const AuthState.resetPasswordSuccess()),
    );
  }

  _handleAuthenticate(_Authenticate event, Emitter emit) async {
    final result = await _authFacade.getUser();

    result.fold(
      (l) => emit(AuthState.authenticateFailed(l)),
      (r) => emit(const AuthState.authenticateSuccess()),
    );
  }
}
