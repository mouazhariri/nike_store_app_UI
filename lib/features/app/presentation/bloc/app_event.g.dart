// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SetAppLanguageEvent extends SetAppLanguageEvent {
  @override
  final String appLanguage;

  factory _$SetAppLanguageEvent(
          [void Function(SetAppLanguageEventBuilder)? updates]) =>
      (new SetAppLanguageEventBuilder()..update(updates))._build();

  _$SetAppLanguageEvent._({required this.appLanguage}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appLanguage, r'SetAppLanguageEvent', 'appLanguage');
  }

  @override
  SetAppLanguageEvent rebuild(
          void Function(SetAppLanguageEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SetAppLanguageEventBuilder toBuilder() =>
      new SetAppLanguageEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SetAppLanguageEvent && appLanguage == other.appLanguage;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appLanguage.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SetAppLanguageEvent')
          ..add('appLanguage', appLanguage))
        .toString();
  }
}

class SetAppLanguageEventBuilder
    implements Builder<SetAppLanguageEvent, SetAppLanguageEventBuilder> {
  _$SetAppLanguageEvent? _$v;

  String? _appLanguage;
  String? get appLanguage => _$this._appLanguage;
  set appLanguage(String? appLanguage) => _$this._appLanguage = appLanguage;

  SetAppLanguageEventBuilder();

  SetAppLanguageEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appLanguage = $v.appLanguage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SetAppLanguageEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SetAppLanguageEvent;
  }

  @override
  void update(void Function(SetAppLanguageEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SetAppLanguageEvent build() => _build();

  _$SetAppLanguageEvent _build() {
    final _$result = _$v ??
        new _$SetAppLanguageEvent._(
            appLanguage: BuiltValueNullFieldError.checkNotNull(
                appLanguage, r'SetAppLanguageEvent', 'appLanguage'));
    replace(_$result);
    return _$result;
  }
}

class _$GetAppLanguageEvent extends GetAppLanguageEvent {
  factory _$GetAppLanguageEvent(
          [void Function(GetAppLanguageEventBuilder)? updates]) =>
      (new GetAppLanguageEventBuilder()..update(updates))._build();

  _$GetAppLanguageEvent._() : super._();

  @override
  GetAppLanguageEvent rebuild(
          void Function(GetAppLanguageEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAppLanguageEventBuilder toBuilder() =>
      new GetAppLanguageEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAppLanguageEvent;
  }

  @override
  int get hashCode {
    return 543411016;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAppLanguageEvent').toString();
  }
}

class GetAppLanguageEventBuilder
    implements Builder<GetAppLanguageEvent, GetAppLanguageEventBuilder> {
  _$GetAppLanguageEvent? _$v;

  GetAppLanguageEventBuilder();

  @override
  void replace(GetAppLanguageEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAppLanguageEvent;
  }

  @override
  void update(void Function(GetAppLanguageEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAppLanguageEvent build() => _build();

  _$GetAppLanguageEvent _build() {
    final _$result = _$v ?? new _$GetAppLanguageEvent._();
    replace(_$result);
    return _$result;
  }
}

class _$GetAppThemeEvent extends GetAppThemeEvent {
  factory _$GetAppThemeEvent(
          [void Function(GetAppThemeEventBuilder)? updates]) =>
      (new GetAppThemeEventBuilder()..update(updates))._build();

  _$GetAppThemeEvent._() : super._();

  @override
  GetAppThemeEvent rebuild(void Function(GetAppThemeEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetAppThemeEventBuilder toBuilder() =>
      new GetAppThemeEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAppThemeEvent;
  }

  @override
  int get hashCode {
    return 626564228;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'GetAppThemeEvent').toString();
  }
}

class GetAppThemeEventBuilder
    implements Builder<GetAppThemeEvent, GetAppThemeEventBuilder> {
  _$GetAppThemeEvent? _$v;

  GetAppThemeEventBuilder();

  @override
  void replace(GetAppThemeEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAppThemeEvent;
  }

  @override
  void update(void Function(GetAppThemeEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetAppThemeEvent build() => _build();

  _$GetAppThemeEvent _build() {
    final _$result = _$v ?? new _$GetAppThemeEvent._();
    replace(_$result);
    return _$result;
  }
}

class _$ChangeAppThemeEvent extends ChangeAppThemeEvent {
  @override
  final int color;

  factory _$ChangeAppThemeEvent(
          [void Function(ChangeAppThemeEventBuilder)? updates]) =>
      (new ChangeAppThemeEventBuilder()..update(updates))._build();

  _$ChangeAppThemeEvent._({required this.color}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        color, r'ChangeAppThemeEvent', 'color');
  }

  @override
  ChangeAppThemeEvent rebuild(
          void Function(ChangeAppThemeEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChangeAppThemeEventBuilder toBuilder() =>
      new ChangeAppThemeEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChangeAppThemeEvent && color == other.color;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChangeAppThemeEvent')
          ..add('color', color))
        .toString();
  }
}

class ChangeAppThemeEventBuilder
    implements Builder<ChangeAppThemeEvent, ChangeAppThemeEventBuilder> {
  _$ChangeAppThemeEvent? _$v;

  int? _color;
  int? get color => _$this._color;
  set color(int? color) => _$this._color = color;

  ChangeAppThemeEventBuilder();

  ChangeAppThemeEventBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _color = $v.color;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChangeAppThemeEvent other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChangeAppThemeEvent;
  }

  @override
  void update(void Function(ChangeAppThemeEventBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChangeAppThemeEvent build() => _build();

  _$ChangeAppThemeEvent _build() {
    final _$result = _$v ??
        new _$ChangeAppThemeEvent._(
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'ChangeAppThemeEvent', 'color'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
