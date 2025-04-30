import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class FlutterAnimateExample extends StatelessWidget {
  const FlutterAnimateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Animate Example'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.tealAccent,
          child: const Center(
            child: Text(
              'Animate Me!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        )
            .animate()
            .fadeIn(duration: 500.ms)
            .scale(begin: Offset(0, 1), end: Offset.zero, duration: 500.ms)
            .slide(begin: const Offset(0, 1), end: Offset.zero, duration: 500.ms),
      ),
    );
  }
}
