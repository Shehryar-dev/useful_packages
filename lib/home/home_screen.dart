


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
