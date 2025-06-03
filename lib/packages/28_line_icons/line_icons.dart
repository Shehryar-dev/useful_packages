

import '../../constants/screen_paths.dart';

class LineIconsExampleScreen extends StatelessWidget {
  const LineIconsExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Line Icons Example"),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(LineIcons.userCircle),
            title: Text("User Circle"),
          ),
          ListTile(
            leading: Icon(LineIcons.facebookF),
            title: Text("Facebook Icon"),
          ),
          ListTile(
            leading: Icon(LineIcons.instagram),
            title: Text("Instagram Icon"),
          ),
          ListTile(
            leading: Icon(LineIcons.search),
            title: Text("Search Icon"),
          ),
          ListTile(
            leading: Icon(LineIcons.mobilePhone),
            title: Text("Mobile Phone Icon"),
          ),
        ],
      ),
    );
  }
}
