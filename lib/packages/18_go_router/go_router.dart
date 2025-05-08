
import '../../constants/screen_paths.dart';

class GoRouterExample extends StatelessWidget {
  GoRouterExample({super.key});

  final GoRouter _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const GoHomePage(),
      ),
      GoRoute(
        path: '/about',
        builder: (context, state) => const GoAboutPage(),
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'GoRouter Package',
      routerConfig: _router,
    );
  }
}
