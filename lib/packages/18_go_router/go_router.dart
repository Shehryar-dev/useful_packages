import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:useful_packages/packages/18_go_router/go_router_about.dart';
import 'package:useful_packages/packages/18_go_router/go_router_home.dart';

class GoRouterExample extends StatelessWidget {
  GoRouterExample({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const GoHomePage(),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const GoAboutPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GoRouter Package',
      routerConfig: _router,
    );
  }
}
