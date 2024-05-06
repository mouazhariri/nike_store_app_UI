import 'package:nike_store/core/util/constants.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class BaseLocalData {
  String get language;

  Future<void> setLanguage(String value);

  int get appColor;
  Future<void>  changeAppColor(int color);
}

@LazySingleton(as: BaseLocalData)
class BaseLocalDataImpl implements BaseLocalData {
  SharedPreferences sharedPreferences;

  BaseLocalDataImpl(this.sharedPreferences);

  @override
  String get language {
    return sharedPreferences.getString(LocalKeys.appLanguage) ?? 'en';
  }

  @override
  Future<void> setLanguage(String value) {
    return sharedPreferences.setString(
      LocalKeys.appLanguage,
      value,
    );
  }

  @override
  int get appColor => sharedPreferences.getInt(LocalKeys.appTheme)??0; // 0=> white // 1=> dark

  @override
  Future<void> changeAppColor(int color) {
   return sharedPreferences.setInt(LocalKeys.appTheme, color);
  }
}
