import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class BubbleGumBoyExample extends StatefulWidget {
  const BubbleGumBoyExample({super.key});

  @override
  State<BubbleGumBoyExample> createState() => _BubbleGumBoyExampleState();
}

class _BubbleGumBoyExampleState extends State<BubbleGumBoyExample> {
  Artboard? _artboard;
  late RiveAnimationController _controller;
  double _xOffset = 0;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/rive/boy.riv').then((data) {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      _controller = SimpleAnimation('idle'); // Change if needed
      artboard.addController(_controller);
      setState(() => _artboard = artboard);
    });
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    setState(() {
      _xOffset += details.delta.dx;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Bubble Gum Boy'), backgroundColor: Colors.black),
      body: GestureDetector(
        onPanUpdate: _onHorizontalDragUpdate,
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: (screenWidth / 2 - 100) + _xOffset.clamp(-screenWidth / 2 + 100, screenWidth / 2 - 100),
              top: 150,
              child: SizedBox(
                height: 300,
                width: 200,
                child: _artboard == null
                    ? const Center(child: CircularProgressIndicator())
                    : Rive(artboard: _artboard!),
              ),
            ),
            const Positioned(
              bottom: 30,
              left: 20,
              right: 20,
              child: Text(
                'Swipe left or right to move Bubble Gum Boy 🎈',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white70, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
