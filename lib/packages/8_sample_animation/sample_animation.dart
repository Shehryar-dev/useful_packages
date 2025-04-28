import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class SimpleAnimationsExample extends StatelessWidget {
  const SimpleAnimationsExample({super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween('color', ColorTween(begin: Colors.blue, end: Colors.purple), duration: const Duration(seconds: 2))
      ..tween('size', Tween<double>(begin: 100, end: 200), duration: const Duration(seconds: 2));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Animations Example'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: PlayAnimationBuilder<Movie>(
          tween: tween,
          duration: tween.duration,
          builder: (context, value, child) {
            return Container(
              width: value.get('size'),
              height: value.get('size'),
              decoration: BoxDecoration(
                color: value.get('color'),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Animated!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
