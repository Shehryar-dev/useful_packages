
import '../../constants/screen_paths.dart';

class GoAboutPage extends StatelessWidget {
  const GoAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('ℹ️ About',style: TextStyle(color: Colors.white, fontSize: 16),),backgroundColor: Colors.indigo.shade900,),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => context.go('/'),
          icon: const Icon(Icons.home),
          label: const Text('Back to Home'),
        ),
      ),
    );
  }
}
