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
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../../domain/localizacao/posicao.dart' as _i11;
import '../../domain/solicitacao/filtro_solicitacoes.dart' as _i12;
import '../core/widgets/ver_foto.dart' as _i6;
import '../pages/criar_solicitacao/criar_soliciatacao_page.dart' as _i5;
import '../pages/criar_solicitacao/widgets/selecionar_localizacao.dart' as _i8;
import '../pages/detalhes_solicitacao/detalhes_solicitacao_page.dart' as _i4;
import '../pages/filter/filter_page.dart' as _i3;
import '../pages/lista_solicitacao/lista_solicitacao_page.dart' as _i2;
import '../pages/login/login_page.dart' as _i1;
import '../pages/profile/profile_page.dart' as _i7;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    LoginPageRoute.name: (routeData) {
      final args = routeData.argsAs<LoginPageRouteArgs>(
          orElse: () => const LoginPageRouteArgs());
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(child: _i1.LoginPage(key: args.key)),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ListaSolicitacaoPageRoute.name: (routeData) {
      final args = routeData.argsAs<ListaSolicitacaoPageRouteArgs>(
          orElse: () => const ListaSolicitacaoPageRouteArgs());
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(child: _i2.ListaSolicitacaoPage(key: args.key)),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FilterPageRoute.name: (routeData) {
      final args = routeData.argsAs<FilterPageRouteArgs>(
          orElse: () => const FilterPageRouteArgs());
      return _i9.CustomPage<_i3.FilterResult>(
        routeData: routeData,
        child: _i3.FilterPage(
          key: args.key,
          initial: args.initial,
        ),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    DetalhesSolicitacaoPageRoute.name: (routeData) {
      final args = routeData.argsAs<DetalhesSolicitacaoPageRouteArgs>();
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(
            child: _i4.DetalhesSolicitacaoPage(
          key: args.key,
          solicitacaoId: args.solicitacaoId,
        )),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    CriarSolicitacaoPageRoute.name: (routeData) {
      final args = routeData.argsAs<CriarSolicitacaoPageRouteArgs>(
          orElse: () => const CriarSolicitacaoPageRouteArgs());
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(child: _i5.CriarSolicitacaoPage(key: args.key)),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    VerFotoPageRoute.name: (routeData) {
      final args = routeData.argsAs<VerFotoPageRouteArgs>();
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i6.VerFotoPage(
          key: args.key,
          provider: args.provider,
        ),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    ProfilePageRoute.name: (routeData) {
      final args = routeData.argsAs<ProfilePageRouteArgs>(
          orElse: () => const ProfilePageRouteArgs());
      return _i9.CustomPage<dynamic>(
        routeData: routeData,
        child: _i9.WrappedRoute(child: _i7.ProfilePage(key: args.key)),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SelecionarLocalizacaoPageRoute.name: (routeData) {
      final args = routeData.argsAs<SelecionarLocalizacaoPageRouteArgs>(
          orElse: () => const SelecionarLocalizacaoPageRouteArgs());
      return _i9.CustomPage<_i11.Posicao>(
        routeData: routeData,
        child: _i8.SelecionarLocalizacaoPage(
          key: args.key,
          posicao: args.posicao,
        ),
        transitionsBuilder: _i9.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 100,
        reverseDurationInMilliseconds: 100,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          LoginPageRoute.name,
          path: '/',
        ),
        _i9.RouteConfig(
          ListaSolicitacaoPageRoute.name,
          path: '/lista-solicitacao-page',
        ),
        _i9.RouteConfig(
          FilterPageRoute.name,
          path: '/filter-page',
        ),
        _i9.RouteConfig(
          DetalhesSolicitacaoPageRoute.name,
          path: '/detalhes-solicitacao-page',
        ),
        _i9.RouteConfig(
          CriarSolicitacaoPageRoute.name,
          path: '/criar-solicitacao-page',
        ),
        _i9.RouteConfig(
          VerFotoPageRoute.name,
          path: '/ver-foto-page',
        ),
        _i9.RouteConfig(
          ProfilePageRoute.name,
          path: '/profile-page',
        ),
        _i9.RouteConfig(
          SelecionarLocalizacaoPageRoute.name,
          path: '/selecionar-localizacao-page',
        ),
      ];
}

/// generated route for
/// [_i1.LoginPage]
class LoginPageRoute extends _i9.PageRouteInfo<LoginPageRouteArgs> {
  LoginPageRoute({InvalidType key})
      : super(
          LoginPageRoute.name,
          path: '/',
          args: LoginPageRouteArgs(key: key),
        );

  static const String name = 'LoginPageRoute';
}

class LoginPageRouteArgs {
  const LoginPageRouteArgs({this.key});

  final InvalidType key;

  @override
  String toString() {
    return 'LoginPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ListaSolicitacaoPage]
class ListaSolicitacaoPageRoute
    extends _i9.PageRouteInfo<ListaSolicitacaoPageRouteArgs> {
  ListaSolicitacaoPageRoute({InvalidType key})
      : super(
          ListaSolicitacaoPageRoute.name,
          path: '/lista-solicitacao-page',
          args: ListaSolicitacaoPageRouteArgs(key: key),
        );

  static const String name = 'ListaSolicitacaoPageRoute';
}

class ListaSolicitacaoPageRouteArgs {
  const ListaSolicitacaoPageRouteArgs({this.key});

  final InvalidType key;

  @override
  String toString() {
    return 'ListaSolicitacaoPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.FilterPage]
class FilterPageRoute extends _i9.PageRouteInfo<FilterPageRouteArgs> {
  FilterPageRoute({
    InvalidType key,
    _i12.FiltroSolicidacoes? initial,
  }) : super(
          FilterPageRoute.name,
          path: '/filter-page',
          args: FilterPageRouteArgs(
            key: key,
            initial: initial,
          ),
        );

  static const String name = 'FilterPageRoute';
}

class FilterPageRouteArgs {
  const FilterPageRouteArgs({
    this.key,
    this.initial,
  });

  final InvalidType key;

  final _i12.FiltroSolicidacoes? initial;

  @override
  String toString() {
    return 'FilterPageRouteArgs{key: $key, initial: $initial}';
  }
}

/// generated route for
/// [_i4.DetalhesSolicitacaoPage]
class DetalhesSolicitacaoPageRoute
    extends _i9.PageRouteInfo<DetalhesSolicitacaoPageRouteArgs> {
  DetalhesSolicitacaoPageRoute({
    InvalidType key,
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

  final InvalidType key;

  final int solicitacaoId;

  @override
  String toString() {
    return 'DetalhesSolicitacaoPageRouteArgs{key: $key, solicitacaoId: $solicitacaoId}';
  }
}

/// generated route for
/// [_i5.CriarSolicitacaoPage]
class CriarSolicitacaoPageRoute
    extends _i9.PageRouteInfo<CriarSolicitacaoPageRouteArgs> {
  CriarSolicitacaoPageRoute({InvalidType key})
      : super(
          CriarSolicitacaoPageRoute.name,
          path: '/criar-solicitacao-page',
          args: CriarSolicitacaoPageRouteArgs(key: key),
        );

  static const String name = 'CriarSolicitacaoPageRoute';
}

class CriarSolicitacaoPageRouteArgs {
  const CriarSolicitacaoPageRouteArgs({this.key});

  final InvalidType key;

  @override
  String toString() {
    return 'CriarSolicitacaoPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i6.VerFotoPage]
class VerFotoPageRoute extends _i9.PageRouteInfo<VerFotoPageRouteArgs> {
  VerFotoPageRoute({
    InvalidType key,
    required _i10.ImageProvider<Object> provider,
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

  final InvalidType key;

  final _i10.ImageProvider<Object> provider;

  @override
  String toString() {
    return 'VerFotoPageRouteArgs{key: $key, provider: $provider}';
  }
}

/// generated route for
/// [_i7.ProfilePage]
class ProfilePageRoute extends _i9.PageRouteInfo<ProfilePageRouteArgs> {
  ProfilePageRoute({InvalidType key})
      : super(
          ProfilePageRoute.name,
          path: '/profile-page',
          args: ProfilePageRouteArgs(key: key),
        );

  static const String name = 'ProfilePageRoute';
}

class ProfilePageRouteArgs {
  const ProfilePageRouteArgs({this.key});

  final InvalidType key;

  @override
  String toString() {
    return 'ProfilePageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i8.SelecionarLocalizacaoPage]
class SelecionarLocalizacaoPageRoute
    extends _i9.PageRouteInfo<SelecionarLocalizacaoPageRouteArgs> {
  SelecionarLocalizacaoPageRoute({
    InvalidType key,
    _i11.Posicao? posicao,
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

  final InvalidType key;

  final _i11.Posicao? posicao;

  @override
  String toString() {
    return 'SelecionarLocalizacaoPageRouteArgs{key: $key, posicao: $posicao}';
  }
}
