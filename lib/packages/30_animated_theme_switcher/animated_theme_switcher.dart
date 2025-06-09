import 'package:flutter/material.dart';
import 'package:animated_theme_switcher/animated_theme_switcher.dart';

class AnimatedThemeSwitcherExample extends StatelessWidget {
  const AnimatedThemeSwitcherExample({super.key});

  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: ThemeData.light(),
      builder: (_, myTheme) => ThemeSwitcher(
        builder: (context) => MaterialApp(
          theme: myTheme,
          home: const ThemeSwitcherHome(),
        ),
      ),
    );
  }
}

class ThemeSwitcherHome extends StatelessWidget {
  const ThemeSwitcherHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animated Theme Switcher")),
      body: Center(
        child: ThemeSwitcher(
          clipper: const ThemeSwitcherBoxClipper(),
          builder: (context) {
            return IconButton(
              icon: Icon(
                ThemeProvider.of(context).brightness == Brightness.light
                    ? Icons.dark_mode
                    : Icons.light_mode,
                size: 40,
              ),
              onPressed: () => ThemeSwitcher.of(context).changeTheme(
                theme: ThemeProvider.of(context).brightness == Brightness.light
                    ? ThemeData.dark()
                    : ThemeData.light(),
              ),
            );
          },
        ),
      ),
    );
  }
}
