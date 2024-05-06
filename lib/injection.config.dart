// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:package_info/package_info.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'core/data/base_local.dart' as _i6;
import 'features/app/data/repository_impl/app_repostory_impl.dart' as _i8;
import 'features/app/domain/repository/app_repositoey.dart' as _i7;
import 'features/app/presentation/bloc/app_bloc.dart' as _i9;
import 'injection.dart' as _i10;

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
  gh.lazySingleton<_i3.Dio>(() => registerModule.dio);
  await gh.factoryAsync<_i4.PackageInfo>(
    () => registerModule.packageInfo,
    preResolve: true,
  );
  await gh.factoryAsync<_i5.SharedPreferences>(
    () => registerModule.sharedPreference,
    preResolve: true,
  );
  gh.lazySingleton<_i6.BaseLocalData>(
      () => _i6.BaseLocalDataImpl(gh<_i5.SharedPreferences>()));
  gh.lazySingleton<_i7.AppRepository>(
      () => _i8.AppRepositoryImpl(gh<_i6.BaseLocalData>()));
  gh.lazySingleton<_i9.AppBloc>(() => _i9.AppBloc(gh<_i7.AppRepository>()));
  return getIt;
}

class _$RegisterModule extends _i10.RegisterModule {}
