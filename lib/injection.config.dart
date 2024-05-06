// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info/package_info.dart' as _i3;
import 'package:shared_preferences/shared_preferences.dart' as _i4;

import 'core/data/base_local.dart' as _i5;
import 'features/app/data/repository_impl/app_repostory_impl.dart' as _i7;
import 'features/app/domain/repository/app_repositoey.dart' as _i6;
import 'features/app/presentation/bloc/app_bloc.dart' as _i8;
import 'injection.dart' as _i9;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i4.SharedPreferences>(
    () => registerModule.sharedPreference,
    preResolve: true,
  );
  gh.lazySingleton<_i5.BaseLocalData>(
      () => _i5.BaseLocalDataImpl(gh<_i4.SharedPreferences>()));
  gh.lazySingleton<_i6.AppRepository>(
      () => _i7.AppRepositoryImpl(gh<_i5.BaseLocalData>()));
  gh.lazySingleton<_i8.AppBloc>(() => _i8.AppBloc(gh<_i6.AppRepository>()));
  return getIt;
}

class _$RegisterModule extends _i9.RegisterModule {}
