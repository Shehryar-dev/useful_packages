

import '../../constants/screen_paths.dart';

class AnimatedIconButtonScreen extends StatelessWidget {
  const AnimatedIconButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated Icon Button Example', style: TextStyle(color: Colors.white),),backgroundColor: Colors.indigo.shade900, iconTheme: IconThemeData(color: Colors.white),
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
