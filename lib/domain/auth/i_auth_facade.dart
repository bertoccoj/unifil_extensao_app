import 'package:dartz/dartz.dart';
import 'package:minha_cidade/core/i_failure.dart';
import 'package:minha_cidade/domain/auth/user.dart';

abstract class IAuthFacade {
  Future<Either<IFailure, Unit>> login({
    required String email,
    required String password,
  });
  Future<Either<IFailure, Unit>> register({
    required String email,
    required String password,
    required String name,
  });
  Future<Either<IFailure, Unit>> resetPassword({
    required String email,
  });

  Future<Either<IFailure, User>> getUser();
  Future<Either<IFailure, Unit>> logout();

  String get token;
}
