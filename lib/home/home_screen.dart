import '../constants/screen_paths.dart';

class UsefulPackageHomeScreen extends StatelessWidget {
  const UsefulPackageHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<_PackageItem> packageItems = [
      _PackageItem(
        title: 'FlutterToast',
        subtitle: 'Show toast messages easily',
        icon: Icons.notifications_active_outlined,
        destination: const FlutterToastExample(),
      ),
      _PackageItem(
        title: 'Video Player',
        subtitle: 'Stream & control videos in your app',
        icon: Icons.video_library_outlined,
        destination: const VideoPlayerExample(), // ADD THIS
      ),
      _PackageItem(
        title: 'Package 3 - feedback',
        subtitle: 'Collect in-app feedback with screenshot support',
        icon: Icons.feedback_outlined,
        destination: const FeedbackExampleScreen(),
      ),
      _PackageItem(
        title: 'Shimmer',
        subtitle: 'Create beautiful skeleton loaders for content placeholders',
        icon: Icons.blur_on,
        destination: const ShimmerExample(),
      ),
      _PackageItem(
        title: 'flutter_rating_bar',
        subtitle: 'Allow users to rate with stars (1-5) with customization',
        icon: Icons.star_rate,
        destination: const RatingBarExample(),
      ),
      _PackageItem(
        title: 'animated_list_plus',
        subtitle: 'Create beautiful animated lists easily',
        icon: Icons.playlist_add_check_circle,
        destination: const AnimatedListExample(),
      ),

      _PackageItem(
        title: 'animate_do',
        subtitle: 'Beautiful pre-built animations easily',
        icon: Icons.animation,
        destination: const AnimateDoExample(),
      ),
      _PackageItem(
        title: 'simple_animations',
        subtitle: 'Create custom and multi-property animations easily',
        icon: Icons.animation_outlined,
        destination: const SimpleAnimationsExample(),
      ),

      _PackageItem(
        title: 'flutter_staggered_animations',
        subtitle: 'Scroll-based list animations (slide, fade)',
        icon: Icons.view_agenda,
        destination: const FlutterStaggeredAnimationsExample(),
      ),

      _PackageItem(
        title: 'flutter_animate',
        subtitle: 'Simplified animations with a unified API',
        icon: Icons.animation,
        destination: const FlutterAnimateExample(),
      ),
      _PackageItem(
        title: 'flutter_animation_plus',
        subtitle: 'Over 15 dynamic animation widgets',
        icon: Icons.auto_awesome,
        destination: const FlutterAnimationPlusExample(),
      ),
      _PackageItem(
        title: 'syncfusion_flutter_charts',
        subtitle: 'Professional-grade charts with zoom, tooltip, animations',
        icon: Icons.show_chart,
        destination: const SyncfusionChartItem(),
      ),
      _PackageItem(
        title: 'fl_chart',
        subtitle: 'Beautiful charts with custom animations & smooth UI',
        icon: Icons.bar_chart,
        destination: const FLChartExample(),
      ),
      _PackageItem(
        title: 'rive',
        subtitle: 'Interactive animation: Bubble Gum Boy',
        icon: Icons.animation_rounded,
        destination: const BubbleGumBoyExample(),
      ),
      _PackageItem(
        title: 'device_info_plus',
        subtitle: 'Fetch device model, OS version & more',
        icon: Icons.info_outline_rounded,
        destination: const DeviceInfoScreen(),
      ),

      _PackageItem(
        title: 'url_launcher',
        subtitle: 'Launch URLs, email, phone, SMS from your app',
        icon: Icons.open_in_browser,
        destination: const UrlLauncherExample(),
      ),
      _PackageItem(
        title: 'go_router',
        subtitle: 'Declarative navigation for Flutter with web & nested route support',
        icon: Icons.route,
        destination: GoRouterExample(),
      ),


      _PackageItem(
        title: 'flutter_launcher_icons',
        subtitle: 'Generate app launcher icons for Android & iOS',
        icon: Icons.app_shortcut_rounded,
        destination: const LauncherIconInfo(),
      ),
      _PackageItem(
        title: 'connectivity_plus',
        subtitle: 'Check internet status in real-time with this plugin',
        icon: Icons.wifi,
        destination: const ConnectivityExample(),
      ),

      _PackageItem(
        title: 'flutter_secure_storage',
        subtitle: 'Securely store key-value pairs using platform-specific storage',
        icon: Icons.lock,
        destination: const SecureStorageExample(),
      ),

      _PackageItem(
        title: 'lottie',
        subtitle: 'Render high-quality vector animations using JSON',
        icon: Icons.animation,
        destination: const LottieExample(),
      ),


      _PackageItem(
        title: 'awesome_snackbar_content',
        subtitle: 'Beautiful and customizable snackbars with unique UI',
        icon: Icons.notification_important,
        destination: const AwesomeSnackbarExample(),
      ),

      _PackageItem(
        title: 'flutter_form_builder',
        subtitle: 'Simplify form creation and validation in Flutter',
        icon: Icons.assignment,
        destination: RegistrationForm(),
      ),

      _PackageItem(
        title: 'flutter_iconly',
        subtitle: 'Modern and minimal icon pack with Light, Bold, Broken styles.',
        icon: Icons.widgets_outlined,
        destination: const IconlyScreen(),
      ),

      _PackageItem(
        title: 'animated_icon_button',
        subtitle: 'Beautiful animated toggle buttons (like, bookmark, etc.)',
        icon: Icons.play_circle_fill_outlined,
        destination: const AnimatedIconButtonScreen(),
      ),


      _PackageItem(
        title: 'flutter_vector_icons',
        subtitle: 'Access to 20+ icon fonts including AntDesign, Ionicons, FontAwesome etc.',
        icon: Icons.widgets_outlined,
        destination: const VectorIconsExampleScreen(),
      ),


      _PackageItem(
        title: 'line_icons',
        subtitle: 'Lightweight and modern icon pack — easily themeable for clean UIs.',
        icon: Icons.line_style,
        destination: const LineIconsExampleScreen(),
      ),




      // Future package screens can be added here
    ];

    return Scaffold(
      appBar: AppBar(
        title:  Text('📦 Useful Flutter Packages',style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade900,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: packageItems.length,
        itemBuilder: (context, index) {
          final item = packageItems[index];
          return _AnimatedCard(item: item);
        },
      ),

    );
  }
}

class _AnimatedCard extends StatelessWidget {
  final _PackageItem item;

  const _AnimatedCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0.8, end: 1),
      duration: const Duration(milliseconds: 500),
      builder: (context, value, child) => Transform.scale(
        scale: value,
        child: child,
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 10),
        elevation: 6,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: ListTile(
          contentPadding: const EdgeInsets.all(16),
          leading: CircleAvatar(
            backgroundColor: Colors.deepPurple.shade100,
            child: Icon(item.icon, color: Colors.deepPurple),
          ),
          title: Text(item.title, style: Theme.of(context).textTheme.titleMedium),
          subtitle: Text(item.subtitle),
          trailing: const Icon(Icons.arrow_forward_ios_rounded),
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (_) => item.destination),
          ),
        ),
      ),
    );
  }
}

class _PackageItem {
  final String title;
  final String subtitle;
  final IconData icon;
  final Widget destination;

  _PackageItem({
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.destination,
  });
}
