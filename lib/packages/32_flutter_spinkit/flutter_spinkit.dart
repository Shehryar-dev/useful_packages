
import '../../constants/screen_paths.dart';

class SpinkitExampleScreen extends StatelessWidget {
  const SpinkitExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      appBar: AppBar(title: const Text("SpinKit Loading Animations")),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitCircle(color: color, size: 60),
            const SizedBox(height: 24),
            SpinKitFadingCube(color: color, size: 60),
            const SizedBox(height: 24),
            SpinKitChasingDots(color: color, size: 60),
            const SizedBox(height: 24),
            SpinKitWave(color: color, size: 60, type: SpinKitWaveType.center),
          ],
        ),
      ),
    );
  }
}
