import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class GoAboutPage extends StatelessWidget {
  const GoAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ℹ️ About',style: TextStyle(color: Colors.white),),backgroundColor: Colors.indigo.shade900,),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => context.go('/'),
          icon: const Icon(Icons.home),
          label: const Text('Back to Home'),
        ),
      ),
    );
  }
}
