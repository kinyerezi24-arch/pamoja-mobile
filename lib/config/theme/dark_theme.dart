/// PAMOJA Dark Theme
/// 
/// Defines the dark theme for the application.
/// Uses Material 3 design with PAMOJA color system optimized for dark mode.

import 'package:flutter/material.dart';
import 'package:pamoja_mobile/config/theme/app_colors.dart';
import 'package:pamoja_mobile/config/theme/app_typography.dart';

ThemeData buildDarkTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(
      primary: AppColors.primaryLight,
      onPrimary: AppColors.primaryDark,
      primaryContainer: AppColors.primary,
      onPrimaryContainer: Colors.white,
      secondary: AppColors.secondaryLight,
      onSecondary: AppColors.secondaryDark,
      secondaryContainer: AppColors.secondary,
      onSecondaryContainer: Colors.white,
      tertiary: AppColors.tertiaryLight,
      onTertiary: AppColors.tertiaryDark,
      tertiaryContainer: AppColors.tertiary,
      onTertiaryContainer: Colors.white,
      error: AppColors.errorLight,
      onError: AppColors.errorDark,
      errorContainer: AppColors.error,
      onErrorContainer: Colors.white,
      background: AppColors.darkBackground,
      onBackground: AppColors.darkTextPrimary,
      surface: AppColors.darkSurface,
      onSurface: AppColors.darkTextPrimary,
      surfaceVariant: AppColors.darkSurfaceVariant,
      onSurfaceVariant: AppColors.darkTextSecondary,
      outline: AppColors.darkOutline,
    ),
    scaffoldBackgroundColor: AppColors.darkBackground,
    textTheme: TextTheme(
      displayLarge: AppTypography.displayLarge.copyWith(color: AppColors.darkTextPrimary),
      displayMedium: AppTypography.displayMedium.copyWith(color: AppColors.darkTextPrimary),
      displaySmall: AppTypography.displaySmall.copyWith(color: AppColors.darkTextPrimary),
      headlineLarge: AppTypography.headlineLarge.copyWith(color: AppColors.darkTextPrimary),
      headlineMedium: AppTypography.headlineMedium.copyWith(color: AppColors.darkTextPrimary),
      headlineSmall: AppTypography.headlineSmall.copyWith(color: AppColors.darkTextPrimary),
      titleLarge: AppTypography.titleLarge.copyWith(color: AppColors.darkTextPrimary),
      titleMedium: AppTypography.titleMedium.copyWith(color: AppColors.darkTextPrimary),
      titleSmall: AppTypography.titleSmall.copyWith(color: AppColors.darkTextSecondary),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.darkTextPrimary),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.darkTextPrimary),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.darkTextTertiary),
      labelLarge: AppTypography.labelLarge.copyWith(color: AppColors.darkTextPrimary),
      labelMedium: AppTypography.labelMedium.copyWith(color: AppColors.darkTextSecondary),
      labelSmall: AppTypography.labelSmall.copyWith(color: AppColors.darkTextTertiary),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.darkSurface,
      surfaceTintColor: AppColors.primaryLight,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.darkTextPrimary),
      titleTextStyle: AppTypography.headlineMedium.copyWith(color: AppColors.darkTextPrimary),
    ),
    cardTheme: CardTheme(
      color: AppColors.darkSurface,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.darkOutline, width: 1),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryLight,
        foregroundColor: AppColors.primaryDark,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primaryLight,
        side: const BorderSide(color: AppColors.primaryLight, width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primaryLight,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkSurfaceVariant,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.darkOutline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.darkOutline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primaryLight, width: 2),
      ),
      labelStyle: AppTypography.bodyMedium.copyWith(color: AppColors.darkTextSecondary),
    ),
  );
}
