import 'package:chopper/chopper.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:minha_cidade/domain/auth/auth_failures.dart';
import 'package:minha_cidade/infrastructure/auth/auth_facade_impl.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/auth_api.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/models/login_payload.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/models/register_payload.dart';
import 'package:mocktail/mocktail.dart';

expectRight<L, R>(Either<L, R> result, [R? value]) {
  expect(result.isRight(), isTrue);
  expect((result as Right<L, R>).value, equals(value ?? unit));
}

class MockResponse<T> extends Mock implements Response<T> {}

class MockAuthApi extends Mock implements AuthApi {}

void main() {
  late MockAuthApi mockAuthApi;
  late AuthFacadeImpl authFacadeImpl;

  setUp(() {
    WidgetsFlutterBinding.ensureInitialized();
    mockAuthApi = MockAuthApi();
    authFacadeImpl = AuthFacadeImpl(mockAuthApi);
  });

  group('login', () {
    loginCall() => mockAuthApi.login(
          const LoginPayload(email: 'email', password: 'password'),
        );

    test('deve retornar erro quando problema na request', () async {
      when(loginCall).thenThrow(Error());

      final result = await authFacadeImpl.login(email: 'email', password: 'password');

      expect(result, equals(left(AuthFailure.unexpected())));
    });

    test('deve retornar erro quando problema credencial invalida', () async {
      final mockResponse = MockResponse();
      when(loginCall).thenAnswer((_) async => mockResponse);
      when(() => mockResponse.isSuccessful).thenReturn(false);

      final result = await authFacadeImpl.login(email: 'email', password: 'password');

      expect(result, equals(left(AuthFailure.wrongCredentials())));
    });

    test('deve retornar sem erro quando sucesso', () async {
      final mockResponse = MockResponse();
      when(loginCall).thenAnswer((_) async => mockResponse);
      when(() => mockResponse.isSuccessful).thenReturn(true);
      when(() => mockResponse.body).thenReturn({
        'data': {'token': ''}
      });

      final result = await authFacadeImpl.login(email: 'email', password: 'password');

      expectRight(result);
    });
  });

  group('register', () {
    const registerPayload = RegisterPayload(email: 'email', password: 'password', displayName: 'displayName');
    registerCall() => mockAuthApi.register(registerPayload);

    test('deve retornar erro quando problema na request', () async {
      when(registerCall).thenThrow(Error());

      final result = await authFacadeImpl.register(
        email: registerPayload.email,
        password: registerPayload.password,
        name: registerPayload.displayName,
      );

      expect(result, equals(left(AuthFailure.unexpected())));
    });

    test('deve retornar registration failed quando status 400', () async {
      final mockResponse = MockResponse();
      when(() => mockResponse.isSuccessful).thenReturn(false);
      when(() => mockResponse.statusCode).thenReturn(400);
      when(registerCall).thenAnswer((_) async => mockResponse);

      final result = await authFacadeImpl.register(
        email: registerPayload.email,
        password: registerPayload.password,
        name: registerPayload.displayName,
      );

      expect(result, equals(left(AuthFailure.registrationFailed('E-mail já existe no sistema'))));
    });

    test('deve retornar registration quando isSuccessful false', () async {
      final mockResponse = MockResponse();
      when(() => mockResponse.isSuccessful).thenReturn(false);
      when(() => mockResponse.statusCode).thenReturn(404);
      when(registerCall).thenAnswer((_) async => mockResponse);

      final result = await authFacadeImpl.register(
        email: registerPayload.email,
        password: registerPayload.password,
        name: registerPayload.displayName,
      );

      expect(result, equals(left(AuthFailure.registrationFailed())));
    });

    test('deve retornar sem erro quando sucesso', () async {
      final mockResponse = MockResponse();
      when(() => mockResponse.isSuccessful).thenReturn(true);
      when(() => mockResponse.body).thenReturn({
        'data': {'token': ''}
      });
      when(registerCall).thenAnswer((_) async => mockResponse);

      final result = await authFacadeImpl.register(
        email: registerPayload.email,
        password: registerPayload.password,
        name: registerPayload.displayName,
      );

      expectRight(result);
    });
  });

  group('logout', () {
    test('deve chamar a api de logout', () async {
      await authFacadeImpl.logout();

      verify(mockAuthApi.logOut).called(1);
    });
  });
}
