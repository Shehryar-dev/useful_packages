

import '../../constants/screen_paths.dart';

class GoHomePage extends StatelessWidget {
  const GoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🏠 Home',style: TextStyle(color: Colors.white, fontSize: 16),),backgroundColor: Colors.indigo.shade900,),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: () => context.go('/about'),
          icon: const Icon(Icons.info_outline),
          label: const Text('Go to About Page'),
        ),
      ),
    );
  }
}
