/// Application Localizations Provider
/// 
/// Provides localization functionality throughout the app.
/// Supports English and Kiswahili.

import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AppLocalizationsProvider {
  /// Get localized strings for the current locale
  static AppLocalizations of(BuildContext context) {
    final localizations = AppLocalizations.of(context);
    if (localizations == null) {
      throw Exception('AppLocalizations not found in context');
    }
    return localizations;
  }

  /// Supported locales
  static const List<Locale> supportedLocales = [
    Locale('en', ''), // English
    Locale('sw', ''), // Kiswahili
  ];

  /// Get locale display name
  static String getLocaleDisplayName(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return 'English';
      case 'sw':
        return 'Kiswahili';
      default:
        return locale.toString();
    }
  }
}
