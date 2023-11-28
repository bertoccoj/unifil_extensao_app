import 'package:dartz/dartz.dart';
import 'package:get_storage/get_storage.dart';
import 'package:injectable/injectable.dart';
import 'package:minha_cidade/core/i_failure.dart';
import 'package:minha_cidade/domain/auth/auth_failures.dart';
import 'package:minha_cidade/domain/auth/i_auth_facade.dart';
import 'package:minha_cidade/domain/auth/user.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/models/login_payload.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/models/raw_user.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/models/register_payload.dart';

import '../core/apis/auth/auth_api.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacadeImpl implements IAuthFacade {
  final AuthApi _authApi;
  final _box = GetStorage();
  static const _boxTokenKey = '_token';

  String? _token;

  @override
  String get token => _token ?? '';

  AuthFacadeImpl(this._authApi);

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    final token = _box.read<String>(_boxTokenKey);
    if (token == null) return;
    _token = token;
  }

  @override
  Future<Either<IFailure, Unit>> login({
    required String email,
    required String password,
  }) async {
    try {
      final res = await _authApi.login(
        LoginPayload(email: email, password: password),
      );

      if (res.isSuccessful) {
        _token = res.body['data']['token'];
        await _box.write(_boxTokenKey, _token);
        return right(unit);
      }

      return left(AuthFailure.wrongCredentials());
    } catch (e) {
      return left(AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<IFailure, Unit>> register({
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      final res = await _authApi.register(
        RegisterPayload(
          email: email,
          password: password,
          displayName: name,
        ),
      );
      if (res.isSuccessful) {
        _token = res.body['data']['token'];
        return right(unit);
      }

      if (res.statusCode == 400) {
        return left(AuthFailure.registrationFailed('E-mail já existe no sistema'));
      }

      return left(AuthFailure.registrationFailed());
    } catch (e) {
      return left(AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<IFailure, Unit>> resetPassword({required String email}) {
    // TODO: implement resetPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<IFailure, User>> getUser() async {
    try {
      final res = await _authApi.authenticate();
      final user = res.body;

      if (res.isSuccessful && user != null) {
        return right(user.toDomain());
      }

      return left(AuthFailure.unexpected());
    } catch (e) {
      return left(AuthFailure.unexpected());
    }
  }

  @override
  Future<Either<IFailure, Unit>> logout() async {
    try {
      await _authApi.logOut();
      return right(unit);
    } catch (e) {
      return right(unit);
    } finally {
      await _box.write(_boxTokenKey, null);
      _token = null;
    }
  }
}
