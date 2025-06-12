
import '../../constants/screen_paths.dart';

class SpinkitExampleScreen extends StatelessWidget {
  const SpinkitExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.secondary;

    return Scaffold(
      appBar: AppBar(title: const Text("SpinKit Loading Animations", style: TextStyle(color: Colors.white, fontSize: 16),),backgroundColor: Colors.indigo.shade900, iconTheme: IconThemeData(color: Colors.white),),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SpinKitCircle(color: color, size: 60),
            const SizedBox(height: 24),
            SpinKitFadingCube(color: Colors.green, size: 60),
            const SizedBox(height: 24),
            SpinKitChasingDots(color: Colors.cyan, size: 60),
            const SizedBox(height: 24),
            SpinKitWave(color: Colors.blue, size: 60, type: SpinKitWaveType.center),
          ],
        ),
      ),
    );
  }
}
