/// PAMOJA Mobile Application Entry Point
/// 
/// This is the main entry point for the PAMOJA mobile application.
/// It initializes the app with:
/// - Riverpod for state management
/// - GoRouter for navigation
/// - Material 3 design
/// - Localization support (English & Kiswahili)
/// - Theme system (Light & Dark)

import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pamoja_mobile/config/router/app_router.dart';
import 'package:pamoja_mobile/config/theme/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Initialize local storage and services here if needed
  // await initializeServices();
  
  runApp(const ProviderScope(child: PamojaApp()));
}

/// Root application widget
class PamojaApp extends ConsumerWidget {
  const PamojaApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final appRouter = ref.watch(appRouterProvider);
    final themeMode = ref.watch(themeModeProvider);

    return MaterialApp.router(
      title: 'PAMOJA',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      
      // Localization
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English
        Locale('sw', ''), // Kiswahili
      ],
      
      // Theming
      theme: ref.watch(lightThemeProvider),
      darkTheme: ref.watch(darkThemeProvider),
      themeMode: themeMode,
    );
  }
}
