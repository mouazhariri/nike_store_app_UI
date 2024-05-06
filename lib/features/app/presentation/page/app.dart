import 'package:nike_store/core/util/app_language.dart';

import 'package:nike_store/core/util/go_routing.dart';
import 'package:nike_store/features/app/presentation/bloc/app_bloc.dart';
import 'package:nike_store/features/app/presentation/bloc/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../../../../generated/l10n.dart';
import '../../../../injection.dart';
// import '../../../splash/presentation/page/splash_page.dart';

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final AppBloc appBloc = sl<AppBloc>();

  @override
  void initState() {
    appBloc.getAppLang();
    appBloc.getAppTheme();
    super.initState();
  }

  @override
  void dispose() async {
    super.dispose();
    await appBloc.close();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      bloc: appBloc,
      builder: (context, state) {
        return MaterialApp.router(

          routerConfig: GoRoutingGenerator.router,
          locale: state.appLanguage == AppLanguagesKeys.ar
              ? const Locale("ar", '')
              : const Locale("en", ''),
          localizationsDelegates: const [
            // AppLocalizations.delegate,
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: S.delegate.supportedLocales,

          themeMode: state.color == 1 ? ThemeMode.dark : ThemeMode.light,
          darkTheme: ThemeData(
            fontFamily: 'Raleway',

            colorScheme: ColorScheme.fromSwatch().copyWith(
              scrim: const Color(0XFF0D6EFD),
              background: const Color(0XFFF7F7F9),
              onBackground: const Color(0XFF1483C2),
              surface: const Color(0XFF0D6EFD),
              onPrimary:   const Color(0XFF0D6EFD),

            ),
            useMaterial3: true,
            primaryColor: const Color.fromRGBO(40, 40, 40, 1),
            disabledColor: Colors.grey.shade100,
          ),
          theme: ThemeData(
              fontFamily: 'Raleway',

              colorScheme: ColorScheme.fromSeed(
                seedColor: Colors.deepPurple,
                background: const Color(0XFFF7F7F9),
                onBackground: const Color(0XFF1483C2),
                surface: const Color(0XFF0D6EFD),
                scrim: const Color(0XFF0D6EFD),
                onPrimary:   const Color(0XFF0D6EFD),

              ),
              useMaterial3: false,
              primaryColor: Colors.grey.shade200,
              disabledColor: const Color.fromRGBO(40, 40, 40, 1)),
          // home: const SplashPage(),
        );
      },
    );
  }
}
