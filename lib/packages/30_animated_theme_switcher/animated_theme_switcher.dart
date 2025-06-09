import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

class AnimatedThemeSwitcherExample extends StatelessWidget {
  const AnimatedThemeSwitcherExample({super.key});

  @override
  Widget build(BuildContext context) {
    // initial theme
    final light = ThemeData.light(useMaterial3: true);
    final dark  = ThemeData.dark(useMaterial3: true);

    return ThemeProvider(
      initTheme: light,
      builder: (_, myTheme) => ThemeSwitcher(
        builder: (_, __) => MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: myTheme,
          home: ThemeSwitcherHome(light: light, dark: dark),
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
    final currentBrightness = ThemeProvider.of(context).theme.brightness;

    return Scaffold(
      appBar: AppBar(title: const Text('Animated Theme Switcher')),
      body: Center(
        child: ThemeSwitcher(
          clipper: const ThemeSwitcherBoxClipper(),          // radial reveal
          builder: (context) => IconButton(
            iconSize: 56,
            icon: Icon(
              currentBrightness == Brightness.light
                  ? Icons.dark_mode
                  : Icons.light_mode,
            ),
            onPressed: () {
              ThemeSwitcher.of(context).changeTheme(
                theme: currentBrightness == Brightness.light ? dark : light,
              );
            },
          ),
        ),
      ),
    );
  }
}
