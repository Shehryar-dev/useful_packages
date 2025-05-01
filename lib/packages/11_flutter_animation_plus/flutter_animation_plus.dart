import 'package:flutter/material.dart';
import 'package:flutter_animation_plus/flutter_animation_plus.dart';

class FlutterAnimationPlusExample extends StatelessWidget {
  const FlutterAnimationPlusExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animation Plus Example',style: TextStyle(color: Colors.white, fontSize: 16),),
        backgroundColor: Colors.indigo.shade900,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Center(
        child: BlobAnimation(
          duration: const Duration(seconds: 2),
          repeat: true,
          child: Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Colors.deepPurpleAccent,
                Colors.purple
              ]),
              borderRadius: BorderRadius.circular(75),
            ),
            child: const Center(
              child: Text(
                'Blob',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
