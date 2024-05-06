import 'package:built_value/built_value.dart';
import 'package:flutter/material.dart' as material;
import '../../../../core/bloc/base_state.dart';
part 'app_state.g.dart';
abstract class AppState
    with BaseState
    implements Built<AppState, AppStateBuilder> {
  String get appLanguage;
  int get color;
  // material.Locale get local;

  AppState._();

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  factory AppState.initial() {
    return AppState(
      (b) => b
        ..message = ''
        ..error = false
        ..isLoading = false
        ..color=1
        ..appLanguage = 'en'
      // ..local=
      ,
    );
  }
}
