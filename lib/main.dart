import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:primeiro_app_flutter/home/presentation/page/home_page.dart';
import 'package:primeiro_app_flutter/injection.dart';
import 'package:primeiro_app_flutter/shared/theme/application_theme.dart';
import 'package:primeiro_app_flutter/shared/theme/data/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(
    DevicePreview(
      builder: (_) {
        return const RickAndMortyApp();
      },
    ),
  );
}

class RickAndMortyApp extends StatelessWidget {
  const RickAndMortyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ApplicationTheme.themes[AppTheme.halloween]?.themeData,
      home: const HomePage(),
    );
  }
}
