
import '../../constants/screen_paths.dart';

class FlutterAnimateExample extends StatelessWidget {
  const FlutterAnimateExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Animate Example', style: TextStyle(color: Colors.white, fontSize: 16),),
        backgroundColor: Colors.indigo.shade900,
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          color: Colors.indigoAccent.shade700,
          child: const Center(
            child: Text(
              'Animate Me!',
              style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
        )
            .animate()
            .fadeIn(duration: 500.ms)
            .scale(begin: Offset(0.2, 0.5), end: Offset(0.6, 1.0), duration: 500.ms)
            .slide(begin: const Offset(0, 1), end: Offset.zero, duration: 500.ms)

      ),
    );
  }
}
