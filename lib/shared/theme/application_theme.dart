import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'data/app_theme.dart';
import 'data/app_theme_model.dart';

class ApplicationTheme {
  static AppThemeModel? byName(String themeName) {
    try {
      return themes[AppTheme.values.byName(themeName)];
    } catch (_) {
      return themes.entries.first.value;
    }
  }

  static final themes = {
    AppTheme.light: AppThemeModel(
      theme: AppTheme.light,
      themeData: ThemeData(
        useMaterial3: true,
        brightness: Brightness.light,
        cardTheme: const CardTheme(elevation: 4.0),
      ),
      icon: const Icon(Icons.light_mode),
    ),
    AppTheme.dark: AppThemeModel(
      theme: AppTheme.dark,
      themeData: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
      icon: const Icon(Icons.dark_mode),
    ),
    AppTheme.halloween: AppThemeModel(
      theme: AppTheme.halloween,
      themeData: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.orange[100],
        textTheme: GoogleFonts.emilysCandyTextTheme(),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.orange),
      ),
      icon: const Icon(Icons.forest),
    ),
  };
}
