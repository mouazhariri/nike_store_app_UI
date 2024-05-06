import 'package:nike_store/core/util/app_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:nike_store/core/util/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../injection.dart';

class AppLanguagesKeys {
  static const en = "en";
  static const ar = "ar";
}

bool isArabic(BuildContext context) {
  return AppLocalizations.of(context).locale.languageCode ==
      AppLanguagesKeys.ar;
}
/////////////// INTL ////////////
// const String prefKeyLang="PREFS_KEY_LANG";
// const String arabic="Arabic";
// const String english="English";
// const Locale arabicLocal=Locale("ar");
// const Locale englishLocal=Locale("en");


// Locale getLocal(){
//   final String? language=sl<SharedPreferences>().getString(LocalKeys.appLanguage);
// }