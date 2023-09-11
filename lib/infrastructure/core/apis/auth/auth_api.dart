import 'package:chopper/chopper.dart';
import 'package:injectable/injectable.dart';
import 'package:minha_cidade/core/config_reader.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/models/login_payload.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/models/raw_user.dart';
import 'package:minha_cidade/infrastructure/core/apis/auth/models/register_payload.dart';
import 'package:minha_cidade/infrastructure/core/interceptors/token_interceptor.dart';

import '../converter.dart';

part 'auth_api.chopper.dart';

@lazySingleton
@ChopperApi(baseUrl: '/auth')
abstract class AuthApi extends ChopperService {
  @Post(path: '/log-in')
  Future<Response> login(@Body() LoginPayload payload);

  @Post(path: '/log-out')
  Future<Response> logOut();

  @Post(path: '/register')
  Future<Response> register(@Body() RegisterPayload payload);

  @Get()
  Future<Response<RawUser>> authenticate();

  @factoryMethod
  static AuthApi create() {
    return ChopperClient(
      baseUrl: ConfigReader.apiUrl(),
      services: [
        _$AuthApi(),
      ],
      interceptors: [
        HttpLoggingInterceptor(),
        TokenInterceptor(),
      ],
      converter: const JsonSerializableConverter({
        LoginPayload: LoginPayload.fromJson,
        RegisterPayload: RegisterPayload.fromJson,
        RawUser: RawUser.fromJson,
      }),
    ).getService<AuthApi>();
  }
}
