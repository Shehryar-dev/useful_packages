import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

class FlutterStaggeredAnimationsExample extends StatelessWidget {
  const FlutterStaggeredAnimationsExample({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(20, (index) => 'Item ${index + 1}');

    return Scaffold(
      appBar: AppBar(
        title: const Text('Staggered List Animation'),
        backgroundColor: Colors.teal,
        centerTitle: true,
      ),
      body: AnimationLimiter(
        child: ListView.builder(
          padding: const EdgeInsets.all(16),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    child: ListTile(
                      leading: const Icon(Icons.animation, color: Colors.teal),
                      title: Text(items[index]),
                    ),
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
