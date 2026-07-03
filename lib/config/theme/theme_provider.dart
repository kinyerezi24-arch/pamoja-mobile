/// Theme Management Provider
/// 
/// Manages theme state using Riverpod.
/// Supports switching between light and dark themes.

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pamoja_mobile/config/theme/dark_theme.dart';
import 'package:pamoja_mobile/config/theme/light_theme.dart';

/// Theme mode state provider
final themeModeProvider = StateProvider<ThemeMode>((ref) {
  return ThemeMode.system;
});

/// Light theme provider
final lightThemeProvider = Provider<ThemeData>((ref) {
  return buildLightTheme();
});

/// Dark theme provider
final darkThemeProvider = Provider<ThemeData>((ref) {
  return buildDarkTheme();
});
