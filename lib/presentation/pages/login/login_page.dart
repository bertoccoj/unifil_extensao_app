import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:minha_cidade/presentation/router/app_router.gr.dart';

import '../../../application/auth/auth/auth_bloc.dart';
import '../../../injection.dart';

class LoginPage extends StatefulWidget implements AutoRouteWrapper {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();

  @override
  Widget wrappedRoute(_) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthBloc>(
          create: (_) => getIt<AuthBloc>()
            ..add(
              const AuthEvent.authenticate(),
            ),
        ),
      ],
      child: this,
    );
  }
}

class _LoginPageState extends State<LoginPage> {
  late Completer<String?> _loginCompleter;
  late Completer<String?> _signupCompleter;
  late Completer<String?> _recoverPasswordCompleter;

  Future<String?> onLogin(LoginData data) async {
    _loginCompleter = Completer<String?>();
    context.read<AuthBloc>().add(
          AuthEvent.login(
            email: data.name,
            password: data.password,
          ),
        );
    return _loginCompleter.future;
  }

  Future<String?> onSignup(SignupData data) async {
    _signupCompleter = Completer<String?>();
    final password = data.password;
    final email = data.name;
    final name = data.additionalSignupData?['name'];
    if (password != null && email != null && name != null) {
      context.read<AuthBloc>().add(
            AuthEvent.register(
              password: password,
              email: email,
              name: name,
            ),
          );
      return _signupCompleter.future;
    }
    return 'Campos obrigatóris não preenchidos';
  }

  Future<String?> onRecoverPassword(String email) async {
    _recoverPasswordCompleter = Completer<String?>();
    return _recoverPasswordCompleter.future;
  }

  navigateToHome() {
    context.router.replace(const ListaSolicitacaoPageRoute());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) => state.whenOrNull(
        authenticateSuccess: navigateToHome,
        loginSuccess: () {
          _loginCompleter.complete(null);
          navigateToHome();
          return;
        },
        loginFailed: (failure) => _loginCompleter.complete(failure.titulo),
        registerSuccess: () {
          _signupCompleter.complete(null);
          navigateToHome();
          return;
        },
        registerFailed: (failure) => _signupCompleter.complete(failure.titulo),
        resetPasswordSuccess: () {
          _recoverPasswordCompleter.complete(null);
          navigateToHome();
          return;
        },
        resetPasswordFailed: (failure) => _recoverPasswordCompleter.complete(failure.titulo),
      ),
      child: FlutterLogin(
        title: 'Minha Cidade',
        onLogin: onLogin,
        onRecoverPassword: onRecoverPassword,
        onSignup: onSignup,
        messages: LoginMessages(
          loginButton: 'Iniciar',
          userHint: 'Email',
          passwordHint: 'Senha',
          confirmPasswordHint: 'Confirmar senha',
          signupButton: 'Registrar',
          additionalSignUpFormDescription: 'Insira seu nome para completar o registro',
          additionalSignUpSubmitButton: 'Finalizar cadastro',
          goBackButton: 'Voltar',
        ),
        hideForgotPasswordButton: true,
        additionalSignupFields: const [
          UserFormField(
            keyName: 'name',
            displayName: 'Nome completo',
          ),
        ],
      ),
    );
  }
}
