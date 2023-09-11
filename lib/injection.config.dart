// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth/auth_bloc.dart' as _i11;
import 'application/auth/user/user_cubit.dart' as _i10;
import 'application/solicitacao/solicitacao_actor/solicitacao_actor_bloc.dart'
    as _i14;
import 'application/solicitacao/solicitacao_detalhada/solicitacao_detalhada_cubit.dart'
    as _i15;
import 'application/solicitacao/solicitacoes/solicitacoes_cubit.dart' as _i16;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/solicitacao/i_solicitacao_repository.dart' as _i12;
import 'infrastructure/auth/auth_facade_impl.dart' as _i5;
import 'infrastructure/core/apis/auth/auth_api.dart' as _i3;
import 'infrastructure/core/apis/solicitacao/solicitacao_api.dart' as _i9;
import 'infrastructure/core/core_module.dart' as _i17;
import 'infrastructure/core/image_service.dart' as _i6;
import 'infrastructure/core/location_service.dart' as _i7;
import 'infrastructure/core/map_launcher.dart' as _i8;
import 'infrastructure/solicitacao/solicitacao_repository.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final coreModule = _$CoreModule();
  gh.lazySingleton<_i3.AuthApi>(() => _i3.AuthApi.create());
  gh.lazySingleton<_i4.IAuthFacade>(
      () => _i5.AuthFacadeImpl(get<_i3.AuthApi>()));
  gh.lazySingleton<_i6.ImageService>(() => _i6.ImageService());
  gh.lazySingleton<_i7.LocationService>(() => _i7.LocationService());
  gh.lazySingleton<_i8.MapLauncher>(() => _i8.MapLauncher());
  gh.lazySingleton<_i9.SolicitacaoApi>(() => coreModule.solicitacaoApi);
  gh.factory<_i10.UserCubit>(() => _i10.UserCubit(get<_i4.IAuthFacade>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i4.IAuthFacade>()));
  gh.lazySingleton<_i12.ISolicitacaoRepository>(
      () => _i13.SolicitacaoRepository(
            get<_i9.SolicitacaoApi>(),
            get<_i4.IAuthFacade>(),
          ));
  gh.factory<_i14.SolicitacaoActorBloc>(() => _i14.SolicitacaoActorBloc(
        get<_i8.MapLauncher>(),
        get<_i12.ISolicitacaoRepository>(),
      ));
  gh.factory<_i15.SolicitacaoDetalhadaCubit>(
      () => _i15.SolicitacaoDetalhadaCubit(get<_i12.ISolicitacaoRepository>()));
  gh.factory<_i16.SolicitacoesCubit>(
      () => _i16.SolicitacoesCubit(get<_i12.ISolicitacaoRepository>()));
  return get;
}

class _$CoreModule extends _i17.CoreModule {}
