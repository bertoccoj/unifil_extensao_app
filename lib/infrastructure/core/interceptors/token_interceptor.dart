import 'dart:async';

import 'package:chopper/chopper.dart';
import 'package:minha_cidade/domain/auth/i_auth_facade.dart';
import 'package:minha_cidade/injection.dart';

class TokenInterceptor implements RequestInterceptor {
  @override
  FutureOr<Request> onRequest(Request request) {
    final authFacade = getIt<IAuthFacade>();
    final headers = request.headers;
    headers['authorization'] = 'Bearer ${authFacade.token}';
    final newRequest = request.copyWith(headers: headers);
    return newRequest;
  }
}
