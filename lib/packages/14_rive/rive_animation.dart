import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';

class RiveRocketExample extends StatefulWidget {
  const RiveRocketExample({super.key});

  @override
  State<RiveRocketExample> createState() => _RiveRocketExampleState();
}

class _RiveRocketExampleState extends State<RiveRocketExample> {
  Artboard? _artboard;
  late RiveAnimationController _controller;
  double _positionX = 0;

  @override
  void initState() {
    super.initState();
    rootBundle.load('assets/rocket_animation.riv').then((data) async {
      final file = RiveFile.import(data);
      final artboard = file.mainArtboard;
      _controller = SimpleAnimation('idle'); // Your animation name
      artboard.addController(_controller);
      setState(() => _artboard = artboard);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('Rive Rocket'), backgroundColor: Colors.black),
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            _positionX += details.delta.dx;
          });
        },
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 100),
              left: MediaQuery.of(context).size.width / 2 + _positionX - 100,
              top: MediaQuery.of(context).size.height / 3,
              child: SizedBox(
                height: 200,
                width: 200,
                child: _artboard == null
                    ? const CircularProgressIndicator()
                    : Rive(artboard: _artboard!),
              ),
            ),
            const Positioned(
              bottom: 40,
              left: 20,
              right: 20,
              child: Text(
                'Swipe left or right to move the rocket! 🚀',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
