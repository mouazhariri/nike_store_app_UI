import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/repository/app_repositoey.dart';
import 'app_event.dart';
import 'app_state.dart';

@lazySingleton
class AppBloc extends Bloc<AppEvent, AppState> {
  final AppRepository appRepository;

  void getAppLang() {
    add(GetAppLanguageEvent());
  }

  void setAppLang(String lang) {
    add(SetAppLanguageEvent((b) => b..appLanguage = lang));
  }

  void getAppTheme() {
    add(GetAppThemeEvent());
  }

  void changeAppTheme(int color) {
    add(ChangeAppThemeEvent((b) => b..color = color));
  }

  @factoryMethod
  AppBloc(this.appRepository) : super(AppState.initial()) {
    on<AppEvent>((event, emit) async {
      ///* language *///

      if (event is GetAppLanguageEvent) {
        final language = appRepository.getLanguage();
        emit(
          state.rebuild((b) => b..appLanguage = language),
        );
      }

      if (event is SetAppLanguageEvent) {
        await appRepository.setLanguage(event.appLanguage);
        emit(
          state.rebuild((b) => b..appLanguage = event.appLanguage),
        );
      }

      ///* theme *///
      if (event is GetAppThemeEvent) {
        final theme = appRepository.getTheme();
        emit(state.rebuild((b) => b..color = theme));
      }

      if(event is ChangeAppThemeEvent){
        await appRepository.changeTheme(event.color);
        emit(state.rebuild((b) =>b..color=event.color ));
      }
    });
  }
}
