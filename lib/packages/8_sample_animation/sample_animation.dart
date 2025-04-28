

import '../../constants/screen_paths.dart';

class SimpleAnimationsExample extends StatelessWidget {
  const SimpleAnimationsExample({super.key});

  @override
  Widget build(BuildContext context) {
    final tween = MovieTween()
      ..tween('color', ColorTween(begin: Colors.blue, end: Colors.blue.shade900), duration: const Duration(seconds: 2))
      ..tween('size', Tween<double>(begin: 120, end: 240), duration: const Duration(seconds: 2));

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.white
        ),
        title:  Text('Simple Animations Example',style:Theme.of(context).textTheme.titleMedium!.apply(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Center(
        child: PlayAnimationBuilder<Movie>(
          tween: tween,
          duration: tween.duration,
          builder: (context, value, child) {
            return Container(
              width: value.get('size'),
              height: value.get('size'),
              decoration: BoxDecoration(
                color: value.get('color'),
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Center(
                child: Text(
                  'Animated!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
