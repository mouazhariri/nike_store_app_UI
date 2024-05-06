import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppLocalizations {
  late Locale locale;

  AppLocalizations(this.locale);

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationDelagate();

//Localizations are accessed using an InheritedWidget "of" syntax
  static AppLocalizations of(context) =>
      Localizations.of<AppLocalizations>(context, AppLocalizations)!;

  late Map<String, String> _localisedString;

  Future<bool> load() async {
    final jsonString = await rootBundle
        .loadString('assets/languages/${locale.languageCode}.json');
    final Map<String, dynamic> jsonMap = json.decode(jsonString);
    _localisedString =
        jsonMap.map((key, value) => MapEntry(key, value.toString()));
    return true;
  }

  String translate(String key) {
    final localisedString = _localisedString[key] ?? '';
    if (localisedString.isEmpty) {
      debugPrint(
          "**/§ warning **/§ this key =$key not found in ${locale.languageCode} please add this word and try again");
    }
    return localisedString;
  }
}

class _AppLocalizationDelagate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationDelagate();

  @override
  bool isSupported(Locale locale) {
    return ["en","ar"].contains(locale.languageCode);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate old) {
    return false;
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations appLocalizations = AppLocalizations(locale);
    await appLocalizations.load();
    return appLocalizations;
  }
}
