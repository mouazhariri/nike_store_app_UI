import 'package:built_value/built_value.dart';

part 'app_event.g.dart';

abstract class AppEvent {}

abstract class SetAppLanguageEvent extends AppEvent
    implements Built<SetAppLanguageEvent, SetAppLanguageEventBuilder> {
  String get appLanguage;

  SetAppLanguageEvent._();

  factory SetAppLanguageEvent(
          [void Function(SetAppLanguageEventBuilder) updates]) =
      _$SetAppLanguageEvent;

  factory SetAppLanguageEvent.initial() {
    return SetAppLanguageEvent((b) => b);
  }
}

abstract class GetAppLanguageEvent extends AppEvent
    implements Built<GetAppLanguageEvent, GetAppLanguageEventBuilder> {
  GetAppLanguageEvent._();

  factory GetAppLanguageEvent(
          [void Function(GetAppLanguageEventBuilder) updates]) =
      _$GetAppLanguageEvent;
}

abstract class GetAppThemeEvent extends AppEvent
    implements Built<GetAppThemeEvent, GetAppThemeEventBuilder> {
  GetAppThemeEvent._();

  factory GetAppThemeEvent([void Function(GetAppThemeEventBuilder) updates]) =
      _$GetAppThemeEvent;
}

abstract class ChangeAppThemeEvent extends AppEvent
    implements Built<ChangeAppThemeEvent, ChangeAppThemeEventBuilder> {
  int get color;

  ChangeAppThemeEvent._();

  factory ChangeAppThemeEvent(
          [void Function(ChangeAppThemeEventBuilder) updates]) =
      _$ChangeAppThemeEvent;

  factory ChangeAppThemeEvent.initial() {
    return ChangeAppThemeEvent((b) => b);
  }
}
