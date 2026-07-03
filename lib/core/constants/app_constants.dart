/// Application Constants
/// 
/// Centralized constants used across the PAMOJA application.
/// Includes API endpoints, timeouts, and other configuration values.

class AppConstants {
  // Private constructor to prevent instantiation
  AppConstants._();

  // API Configuration
  static const String apiBaseUrl = 'https://api.pamoja.local';
  static const Duration apiTimeout = Duration(seconds: 30);
  static const Duration apiConnectTimeout = Duration(seconds: 10);
  static const Duration apiReceiveTimeout = Duration(seconds: 30);

  // App Information
  static const String appName = 'PAMOJA';
  static const String appVersion = '0.1.0';
  static const String appBuildNumber = '1';

  // Storage Keys
  static const String userPreferencesBox = 'user_preferences';
  static const String businessDataBox = 'business_data';
  static const String cacheBox = 'app_cache';

  // Feature Modules
  static const List<String> availableModules = [
    'authentication',
    'dashboard',
    'pos',
    'inventory',
    'customers',
    'products',
    'cashbooks',
    'reports',
  ];
}
