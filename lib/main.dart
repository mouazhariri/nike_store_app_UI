import 'package:flutter/material.dart';
import 'features/app/presentation/page/app.dart';
import 'injection.dart';

Future<void> main()async {
  WidgetsFlutterBinding.ensureInitialized();

  await configurationDependencies();

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: [
  // ]);
  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  // SystemChrome.setEnabledSystemUIMode(SystemUiMode.leanBack);

  runApp( MyApp());
}

