import 'package:nike_store/core/util/constants.dart';
import 'package:nike_store/injection.config.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

// import  'injection.config.dart';

final sl = GetIt.instance;

@module
abstract class RegisterModule {
  @preResolve
  Future<PackageInfo> get packageInfo => PackageInfo.fromPlatform();
  @preResolve
  Future<SharedPreferences> get sharedPreference => SharedPreferences.getInstance();


}

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configurationDependencies()async{
  await $initGetIt(sl);
}
