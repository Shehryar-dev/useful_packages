import 'package:flutter/material.dart';

class LauncherIconInfo extends StatelessWidget {
  const LauncherIconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🚀 App Launcher Icon', style: TextStyle(color: Colors.white, fontSize: 16),),backgroundColor: Colors.indigo.shade900,),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Your custom launcher icon has been set!',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.asset(
                'assets/icons/icon.png',
                width: 120,
                height: 120,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'This icon will appear on your home screen for Android & iOS apps.',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
