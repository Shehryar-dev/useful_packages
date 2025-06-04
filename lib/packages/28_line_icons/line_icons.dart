

import '../../constants/screen_paths.dart';

class LineIconsExampleScreen extends StatelessWidget {
  const LineIconsExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Line Icons Example", style: TextStyle(color: Colors.white, fontSize: 16,),),
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.white),
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
