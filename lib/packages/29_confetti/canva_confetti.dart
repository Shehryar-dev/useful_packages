

import '../../constants/screen_paths.dart';

class ConfettiExampleScreen extends StatefulWidget {
  const ConfettiExampleScreen({super.key});

  @override
  State<ConfettiExampleScreen> createState() => _ConfettiExampleScreenState();
}

class _ConfettiExampleScreenState extends State<ConfettiExampleScreen> {
  late ConfettiController _confettiController;

  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 2));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void _playConfetti() {
    _confettiController.play();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Confetti Celebration", style: TextStyle(color: Colors.white), ), iconTheme: IconThemeData(color: Colors.white),backgroundColor: Colors.indigo.shade900,),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ElevatedButton(
                  onPressed: _playConfetti,
                  child: const Text("Celebrate 🎉"),
                ),
                ConfettiWidget(
                  confettiController: _confettiController,
                  blastDirectionality: BlastDirectionality.explosive,
                  emissionFrequency: 0.05,
                  numberOfParticles: 30,
                  gravity: 0.2,
                  shouldLoop: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
