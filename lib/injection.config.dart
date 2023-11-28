// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:minha_cidade/application/auth/auth/auth_bloc.dart' as _i11;
import 'package:minha_cidade/application/auth/user/user_cubit.dart' as _i10;
import 'package:minha_cidade/application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart'
    as _i14;
import 'package:minha_cidade/application/solicitacao/solicitacao_detalhada/solicitacao_detalhada_cubit.dart'
    as _i15;
import 'package:minha_cidade/application/solicitacao/solicitacoes/solicitacoes_cubit.dart'
    as _i16;
import 'package:minha_cidade/domain/auth/i_auth_facade.dart' as _i4;
import 'package:minha_cidade/domain/solicitacao/i_solicitacao_repository.dart'
    as _i12;
import 'package:minha_cidade/infrastructure/auth/auth_facade_impl.dart' as _i5;
import 'package:minha_cidade/infrastructure/core/apis/auth/auth_api.dart'
    as _i3;
import 'package:minha_cidade/infrastructure/core/apis/solicitacao/solicitacao_api.dart'
    as _i9;
import 'package:minha_cidade/infrastructure/core/core_module.dart' as _i17;
import 'package:minha_cidade/infrastructure/core/image_service.dart' as _i6;
import 'package:minha_cidade/infrastructure/core/location_service.dart' as _i7;
import 'package:minha_cidade/infrastructure/core/map_launcher.dart' as _i8;
import 'package:minha_cidade/infrastructure/solicitacao/solicitacao_repository.dart'
    as _i13;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final coreModule = _$CoreModule();
    gh.lazySingleton<_i3.AuthApi>(() => _i3.AuthApi.create());
    await gh.lazySingletonAsync<_i4.IAuthFacade>(
      () {
        final i = _i5.AuthFacadeImpl(gh<_i3.AuthApi>());
        return i.init().then((_) => i);
      },
      preResolve: true,
    );
    gh.lazySingleton<_i6.ImageService>(() => _i6.ImageService());
    gh.lazySingleton<_i7.LocationService>(() => _i7.LocationService());
    gh.lazySingleton<_i8.MapLauncher>(() => _i8.MapLauncher());
    gh.lazySingleton<_i9.SolicitacaoApi>(() => coreModule.solicitacaoApi);
    gh.factory<_i10.UserCubit>(() => _i10.UserCubit(gh<_i4.IAuthFacade>()));
    gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(gh<_i4.IAuthFacade>()));
    gh.lazySingleton<_i12.ISolicitacaoRepository>(
        () => _i13.SolicitacaoRepository(
              gh<_i9.SolicitacaoApi>(),
              gh<_i4.IAuthFacade>(),
            ));
    gh.factory<_i14.SolicitacaoActorBloc>(() => _i14.SolicitacaoActorBloc(
          gh<_i8.MapLauncher>(),
          gh<_i12.ISolicitacaoRepository>(),
        ));
    gh.factory<_i15.SolicitacaoDetalhadaCubit>(() =>
        _i15.SolicitacaoDetalhadaCubit(gh<_i12.ISolicitacaoRepository>()));
    gh.factory<_i16.SolicitacoesCubit>(
        () => _i16.SolicitacoesCubit(gh<_i12.ISolicitacaoRepository>()));
    return this;
  }
}

class _$CoreModule extends _i17.CoreModule {}
