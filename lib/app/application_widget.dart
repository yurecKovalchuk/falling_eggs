import 'package:falling_eggs/features/features.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'app_routes_const.dart';



class ApplicationWidget extends StatelessWidget {
  ApplicationWidget({super.key});

  final GoRouter _router = GoRouter(
    initialLocation: AppRoutInfo.loading.path,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRoutInfo.menu.path,
        name: AppRoutInfo.menu.name,
        builder: (context, state) => const MenuScreen(),
        routes: [
          GoRoute(
            path: AppRoutInfo.leaderboard.subPath,
            name: AppRoutInfo.leaderboard.name,
            builder: (context, state) => const LeaderboardScreen(),
          ),
          GoRoute(
            path: AppRoutInfo.profile.subPath,
            name: AppRoutInfo.profile.name,
            builder: (context, state) => const ProfileScreen(),
          ),
          GoRoute(
            path: AppRoutInfo.settings.subPath,
            name: AppRoutInfo.settings.name,
            builder: (context, state) => const SettingsScreen(),
          ),
          GoRoute(
            path: AppRoutInfo.privacyPolicy.subPath,
            name: AppRoutInfo.privacyPolicy.name,
            builder: (context, state) => const PrivacyPolicyScreen(),
          ),
          GoRoute(
            path: AppRoutInfo.termsOfUse.subPath,
            name: AppRoutInfo.termsOfUse.name,
            builder: (context, state) => const TermsOfUseScreen(),
          ),
        ],
      ),

      GoRoute(
        path: AppRoutInfo.home.path,
        name: AppRoutInfo.home.name,
        builder: (context, state) => const HomeScreen(),
      ),
      GoRoute(
        path: AppRoutInfo.game.path,
        name: AppRoutInfo.game.name,
        builder: (context, state) => const GameScreen(),
      ),
      GoRoute(
        path: AppRoutInfo.level.path,
        name: AppRoutInfo.level.name,
        builder: (context, state) => const LevelScreen(),
      ),
      GoRoute(
        path: AppRoutInfo.loading.path,
        name: AppRoutInfo.loading.name,
        builder: (context, state) => const LoadingScreen(),
      ),
      GoRoute(
        path: AppRoutInfo.loading.path,
        name: AppRoutInfo.loading.name,
        builder: (context, state) => const ShopScreen(),
      ),
    ],
    errorBuilder: (context, state) => Scaffold(
      body: Center(
        child: Text('Route not found: ${state.uri}'),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
