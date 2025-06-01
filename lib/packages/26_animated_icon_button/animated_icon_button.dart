import 'package:flutter/material.dart';
import 'package:animated_icon_button/animated_icon_button.dart';

class AnimatedIconButtonScreen extends StatelessWidget {
  const AnimatedIconButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Icon Button Example'),
      ),
      body: Center(
        child: AnimatedIconButton(
          size: 60,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Icon toggled!')),
            );
          },
          duration: const Duration(milliseconds: 500),
          splashColor: Colors.purpleAccent,
          icons: const <AnimatedIconItem>[
            AnimatedIconItem(icon: Icon(Icons.favorite_border, color: Colors.grey)),
            AnimatedIconItem(icon: Icon(Icons.favorite, color: Colors.red)),
          ],
        ),
      ),
    );
  }
}
