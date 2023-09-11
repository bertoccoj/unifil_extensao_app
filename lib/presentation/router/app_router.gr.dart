// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../domain/localizacao/posicao.dart' as _i10;
import '../core/widgets/ver_foto.dart' as _i4;
import '../pages/criar_solicitacao/criar_soliciatacao_page.dart' as _i3;
import '../pages/criar_solicitacao/widgets/selecionar_localizacao.dart' as _i7;
import '../pages/detalhes_solicitacao/detalhes_solicitacao_page.dart' as _i2;
import '../pages/lista_solicitacao/lista_solicitacao_page.dart' as _i1;
import '../pages/login/login_page.dart' as _i6;
import '../pages/profile/profile_page.dart' as _i5;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    ListaSolicitacaoPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i1.ListaSolicitacaoPage()),
        opaque: true,
        barrierDismissible: false,
      );
    },
    DetalhesSolicitacaoPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetalhesSolicitacaoPageRouteArgs>();
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(
            child: _i2.DetalhesSolicitacaoPage(
          key: args.key,
          solicitacaoId: args.solicitacaoId,
        )),
        opaque: true,
        barrierDismissible: false,
      );
    },
    CriarSolicitacaoPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i3.CriarSolicitacaoPage()),
        opaque: true,
        barrierDismissible: false,
      );
    },
    VerFotoPageRoute.name: (routeData) {
      final args = routeData.argsAs<VerFotoPageRouteArgs>();
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.VerFotoPage(
          key: args.key,
          provider: args.provider,
        ),
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfilePageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i5.ProfilePage()),
        opaque: true,
        barrierDismissible: false,
      );
    },
    LoginPageRoute.name: (routeData) {
      return _i8.CustomPage<dynamic>(
        routeData: routeData,
        child: _i8.WrappedRoute(child: const _i6.LoginPage()),
        opaque: true,
        barrierDismissible: false,
      );
    },
    SelecionarLocalizacaoPageRoute.name: (routeData) {
      final args = routeData.argsAs<SelecionarLocalizacaoPageRouteArgs>(
          orElse: () => const SelecionarLocalizacaoPageRouteArgs());
      return _i8.MaterialPageX<_i10.Posicao>(
        routeData: routeData,
        child: _i7.SelecionarLocalizacaoPage(
          key: args.key,
          posicao: args.posicao,
        ),
      );
    },
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(
          ListaSolicitacaoPageRoute.name,
          path: '/lista-solicitacao-page',
        ),
        _i8.RouteConfig(
          DetalhesSolicitacaoPageRoute.name,
          path: '/detalhes-solicitacao-page',
        ),
        _i8.RouteConfig(
          CriarSolicitacaoPageRoute.name,
          path: '/criar-solicitacao-page',
        ),
        _i8.RouteConfig(
          VerFotoPageRoute.name,
          path: '/ver-foto-page',
        ),
        _i8.RouteConfig(
          ProfilePageRoute.name,
          path: '/profile-page',
        ),
        _i8.RouteConfig(
          LoginPageRoute.name,
          path: '/',
        ),
        _i8.RouteConfig(
          SelecionarLocalizacaoPageRoute.name,
          path: '/selecionar-localizacao-page',
        ),
      ];
}

/// generated route for
/// [_i1.ListaSolicitacaoPage]
class ListaSolicitacaoPageRoute extends _i8.PageRouteInfo<void> {
  const ListaSolicitacaoPageRoute()
      : super(
          ListaSolicitacaoPageRoute.name,
          path: '/lista-solicitacao-page',
        );

  static const String name = 'ListaSolicitacaoPageRoute';
}

/// generated route for
/// [_i2.DetalhesSolicitacaoPage]
class DetalhesSolicitacaoPageRoute
    extends _i8.PageRouteInfo<DetalhesSolicitacaoPageRouteArgs> {
  DetalhesSolicitacaoPageRoute({
    _i9.Key? key,
    required int solicitacaoId,
  }) : super(
          DetalhesSolicitacaoPageRoute.name,
          path: '/detalhes-solicitacao-page',
          args: DetalhesSolicitacaoPageRouteArgs(
            key: key,
            solicitacaoId: solicitacaoId,
          ),
        );

  static const String name = 'DetalhesSolicitacaoPageRoute';
}

class DetalhesSolicitacaoPageRouteArgs {
  const DetalhesSolicitacaoPageRouteArgs({
    this.key,
    required this.solicitacaoId,
  });

  final _i9.Key? key;

  final int solicitacaoId;

  @override
  String toString() {
    return 'DetalhesSolicitacaoPageRouteArgs{key: $key, solicitacaoId: $solicitacaoId}';
  }
}

/// generated route for
/// [_i3.CriarSolicitacaoPage]
class CriarSolicitacaoPageRoute extends _i8.PageRouteInfo<void> {
  const CriarSolicitacaoPageRoute()
      : super(
          CriarSolicitacaoPageRoute.name,
          path: '/criar-solicitacao-page',
        );

  static const String name = 'CriarSolicitacaoPageRoute';
}

/// generated route for
/// [_i4.VerFotoPage]
class VerFotoPageRoute extends _i8.PageRouteInfo<VerFotoPageRouteArgs> {
  VerFotoPageRoute({
    _i9.Key? key,
    required _i9.ImageProvider<Object> provider,
  }) : super(
          VerFotoPageRoute.name,
          path: '/ver-foto-page',
          args: VerFotoPageRouteArgs(
            key: key,
            provider: provider,
          ),
        );

  static const String name = 'VerFotoPageRoute';
}

class VerFotoPageRouteArgs {
  const VerFotoPageRouteArgs({
    this.key,
    required this.provider,
  });

  final _i9.Key? key;

  final _i9.ImageProvider<Object> provider;

  @override
  String toString() {
    return 'VerFotoPageRouteArgs{key: $key, provider: $provider}';
  }
}

/// generated route for
/// [_i5.ProfilePage]
class ProfilePageRoute extends _i8.PageRouteInfo<void> {
  const ProfilePageRoute()
      : super(
          ProfilePageRoute.name,
          path: '/profile-page',
        );

  static const String name = 'ProfilePageRoute';
}

/// generated route for
/// [_i6.LoginPage]
class LoginPageRoute extends _i8.PageRouteInfo<void> {
  const LoginPageRoute()
      : super(
          LoginPageRoute.name,
          path: '/',
        );

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [_i7.SelecionarLocalizacaoPage]
class SelecionarLocalizacaoPageRoute
    extends _i8.PageRouteInfo<SelecionarLocalizacaoPageRouteArgs> {
  SelecionarLocalizacaoPageRoute({
    _i9.Key? key,
    _i10.Posicao? posicao,
  }) : super(
          SelecionarLocalizacaoPageRoute.name,
          path: '/selecionar-localizacao-page',
          args: SelecionarLocalizacaoPageRouteArgs(
            key: key,
            posicao: posicao,
          ),
        );

  static const String name = 'SelecionarLocalizacaoPageRoute';
}

class SelecionarLocalizacaoPageRouteArgs {
  const SelecionarLocalizacaoPageRouteArgs({
    this.key,
    this.posicao,
  });

  final _i9.Key? key;

  final _i10.Posicao? posicao;

  @override
  String toString() {
    return 'SelecionarLocalizacaoPageRouteArgs{key: $key, posicao: $posicao}';
  }
}
