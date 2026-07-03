/// Application Router Configuration
/// 
/// Defines all routes in the PAMOJA application.
/// Uses GoRouter for navigation management.
/// Supports feature-based routing.

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:pamoja_mobile/features/authentication/presentation/pages/splash_page.dart';

/// Application router provider
final appRouterProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/',
    routes: [
      GoRoute(
        path: '/',
        name: 'splash',
        builder: (context, state) => const SplashPage(),
      ),
      // Authentication routes will be added here
      // Dashboard routes will be added here
      // Other feature routes will be added here
    ],
    errorBuilder: (context, state) {
      return Scaffold(
        body: Center(
          child: Text('Route not found: ${state.location}'),
        ),
      );
    },
  );
});
