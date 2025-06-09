
import '../../constants/screen_paths.dart';

class AnimatedThemeSwitcherExample extends StatelessWidget {
  const AnimatedThemeSwitcherExample({super.key});

  @override
  Widget build(BuildContext context) {
    final lightTheme = ThemeData.light(useMaterial3: true);
    final darkTheme = ThemeData.dark(useMaterial3: true);

    return ThemeProvider(
      initTheme: lightTheme,
      child: Builder(
        builder: (context) => ThemeSwitchingArea(
          child: Builder(
            builder: (context) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                theme: Theme.of(context),
                home: ThemeSwitcherHome(
                  light: lightTheme,
                  dark: darkTheme,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class ThemeSwitcherHome extends StatelessWidget {
  const ThemeSwitcherHome({super.key, required this.light, required this.dark});

  final ThemeData light;
  final ThemeData dark;

  @override
  Widget build(BuildContext context) {
    final isLight = Theme.brightnessOf(context) == Brightness.light;

    return Scaffold(
      appBar: AppBar(title: const Text("Animated Theme Switcher",style: TextStyle(fontSize: 16),)),
      body: Center(
        child: ThemeSwitcher(
          clipper: const ThemeSwitcherBoxClipper(),
          builder: (context) {
            return IconButton(
              icon: Icon(isLight ? Icons.dark_mode : Icons.light_mode),
              iconSize: 60,
              onPressed: () {
                ThemeSwitcher.of(context).changeTheme(
                  theme: isLight ? dark : light,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
