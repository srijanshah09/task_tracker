import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:task_tracker/features/home/views/home.dart';
import 'package:task_tracker/features/home/views/splash_screen.dart';

// GoRouter configuration
class ZRouter {
  ZRouter._();

  static final router = GoRouter(
    routes: [
      GoRoute(
        name: 'splash',
        path: '/',
        builder: (BuildContext context, GoRouterState state) => const SplashScreen(),
      ),
      GoRoute(
        name: 'home',
        path: '/home',
        builder: (BuildContext context, GoRouterState state) => const HomeScreen(),
      ),
    ],
  );
}
