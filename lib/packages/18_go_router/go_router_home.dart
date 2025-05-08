import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoHomePage extends StatelessWidget {
  const GoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🏠 Home')),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => context.go('/about'),
          icon: const Icon(Icons.info_outline),
          label: const Text('Go to About Page'),
        ),
      ),
    );
  }
}
