import 'dart:ui';

import 'package:nike_store/core/data/base_local.dart';
import 'package:nike_store/features/app/domain/repository/app_repositoey.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: AppRepository)
class AppRepositoryImpl implements AppRepository {
  final BaseLocalData baseLocalData;

  AppRepositoryImpl(this.baseLocalData);

  @override
  String getLanguage() {
    return baseLocalData.language;
  }

  @override
  Future<void> setLanguage(String value) {
    return baseLocalData.setLanguage(value);
  }

  @override
  Future<void> changeTheme(int color) {
    return baseLocalData.changeAppColor(color);
  }

  @override
  int getTheme() {
    return baseLocalData.appColor;
  }
}
