/// PAMOJA Light Theme
/// 
/// Defines the light theme for the application.
/// Uses Material 3 design with PAMOJA color system.

import 'package:flutter/material.dart';
import 'package:pamoja_mobile/config/theme/app_colors.dart';
import 'package:pamoja_mobile/config/theme/app_typography.dart';

ThemeData buildLightTheme() {
  return ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(
      primary: AppColors.primary,
      onPrimary: Colors.white,
      primaryContainer: AppColors.primaryLight,
      onPrimaryContainer: AppColors.primaryDark,
      secondary: AppColors.secondary,
      onSecondary: Colors.white,
      secondaryContainer: AppColors.secondaryLight,
      onSecondaryContainer: AppColors.secondaryDark,
      tertiary: AppColors.tertiary,
      onTertiary: Colors.white,
      tertiaryContainer: AppColors.tertiaryLight,
      onTertiaryContainer: AppColors.tertiaryDark,
      error: AppColors.error,
      onError: Colors.white,
      errorContainer: AppColors.errorLight,
      onErrorContainer: AppColors.errorDark,
      background: AppColors.lightBackground,
      onBackground: AppColors.lightTextPrimary,
      surface: AppColors.lightSurface,
      onSurface: AppColors.lightTextPrimary,
      surfaceVariant: AppColors.lightSurfaceVariant,
      onSurfaceVariant: AppColors.lightTextSecondary,
      outline: AppColors.lightOutline,
    ),
    scaffoldBackgroundColor: AppColors.lightBackground,
    textTheme: TextTheme(
      displayLarge: AppTypography.displayLarge.copyWith(color: AppColors.lightTextPrimary),
      displayMedium: AppTypography.displayMedium.copyWith(color: AppColors.lightTextPrimary),
      displaySmall: AppTypography.displaySmall.copyWith(color: AppColors.lightTextPrimary),
      headlineLarge: AppTypography.headlineLarge.copyWith(color: AppColors.lightTextPrimary),
      headlineMedium: AppTypography.headlineMedium.copyWith(color: AppColors.lightTextPrimary),
      headlineSmall: AppTypography.headlineSmall.copyWith(color: AppColors.lightTextPrimary),
      titleLarge: AppTypography.titleLarge.copyWith(color: AppColors.lightTextPrimary),
      titleMedium: AppTypography.titleMedium.copyWith(color: AppColors.lightTextPrimary),
      titleSmall: AppTypography.titleSmall.copyWith(color: AppColors.lightTextSecondary),
      bodyLarge: AppTypography.bodyLarge.copyWith(color: AppColors.lightTextPrimary),
      bodyMedium: AppTypography.bodyMedium.copyWith(color: AppColors.lightTextPrimary),
      bodySmall: AppTypography.bodySmall.copyWith(color: AppColors.lightTextTertiary),
      labelLarge: AppTypography.labelLarge.copyWith(color: AppColors.lightTextPrimary),
      labelMedium: AppTypography.labelMedium.copyWith(color: AppColors.lightTextSecondary),
      labelSmall: AppTypography.labelSmall.copyWith(color: AppColors.lightTextTertiary),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.lightSurface,
      surfaceTintColor: AppColors.primary,
      elevation: 0,
      iconTheme: const IconThemeData(color: AppColors.lightTextPrimary),
      titleTextStyle: AppTypography.headlineMedium.copyWith(color: AppColors.lightTextPrimary),
    ),
    cardTheme: CardTheme(
      color: AppColors.lightSurface,
      elevation: 1,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: const BorderSide(color: AppColors.lightOutline, width: 1),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 2,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: AppColors.primary,
        side: const BorderSide(color: AppColors.primary, width: 2),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: AppColors.primary,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightSurfaceVariant,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.lightOutline),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.lightOutline),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: const BorderSide(color: AppColors.primary, width: 2),
      ),
      labelStyle: AppTypography.bodyMedium.copyWith(color: AppColors.lightTextSecondary),
    ),
  );
}
