// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_state.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$AppState extends AppState {
  @override
  final String appLanguage;
  @override
  final int color;
  @override
  final String message;
  @override
  final bool error;
  @override
  final bool isLoading;

  factory _$AppState([void Function(AppStateBuilder)? updates]) =>
      (new AppStateBuilder()..update(updates))._build();

  _$AppState._(
      {required this.appLanguage,
      required this.color,
      required this.message,
      required this.error,
      required this.isLoading})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        appLanguage, r'AppState', 'appLanguage');
    BuiltValueNullFieldError.checkNotNull(color, r'AppState', 'color');
    BuiltValueNullFieldError.checkNotNull(message, r'AppState', 'message');
    BuiltValueNullFieldError.checkNotNull(error, r'AppState', 'error');
    BuiltValueNullFieldError.checkNotNull(isLoading, r'AppState', 'isLoading');
  }

  @override
  AppState rebuild(void Function(AppStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppStateBuilder toBuilder() => new AppStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppState &&
        appLanguage == other.appLanguage &&
        color == other.color &&
        message == other.message &&
        error == other.error &&
        isLoading == other.isLoading;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, appLanguage.hashCode);
    _$hash = $jc(_$hash, color.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, isLoading.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppState')
          ..add('appLanguage', appLanguage)
          ..add('color', color)
          ..add('message', message)
          ..add('error', error)
          ..add('isLoading', isLoading))
        .toString();
  }
}

class AppStateBuilder implements Builder<AppState, AppStateBuilder> {
  _$AppState? _$v;

  String? _appLanguage;
  String? get appLanguage => _$this._appLanguage;
  set appLanguage(String? appLanguage) => _$this._appLanguage = appLanguage;

  int? _color;
  int? get color => _$this._color;
  set color(int? color) => _$this._color = color;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  bool? _error;
  bool? get error => _$this._error;
  set error(bool? error) => _$this._error = error;

  bool? _isLoading;
  bool? get isLoading => _$this._isLoading;
  set isLoading(bool? isLoading) => _$this._isLoading = isLoading;

  AppStateBuilder();

  AppStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _appLanguage = $v.appLanguage;
      _color = $v.color;
      _message = $v.message;
      _error = $v.error;
      _isLoading = $v.isLoading;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppState;
  }

  @override
  void update(void Function(AppStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppState build() => _build();

  _$AppState _build() {
    final _$result = _$v ??
        new _$AppState._(
            appLanguage: BuiltValueNullFieldError.checkNotNull(
                appLanguage, r'AppState', 'appLanguage'),
            color: BuiltValueNullFieldError.checkNotNull(
                color, r'AppState', 'color'),
            message: BuiltValueNullFieldError.checkNotNull(
                message, r'AppState', 'message'),
            error: BuiltValueNullFieldError.checkNotNull(
                error, r'AppState', 'error'),
            isLoading: BuiltValueNullFieldError.checkNotNull(
                isLoading, r'AppState', 'isLoading'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
