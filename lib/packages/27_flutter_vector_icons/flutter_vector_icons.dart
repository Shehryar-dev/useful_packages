import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class VectorIconsExampleScreen extends StatelessWidget {
  const VectorIconsExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Vector Icons Example", style: TextStyle(color: Colors.white,fontSize: 16),),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          ListTile(
            leading: Icon(FontAwesome.rocket, color: Colors.deepPurple),
            title: Text('FontAwesome Icon'),
          ),
          ListTile(
            leading: Icon(AntDesign.smileo, color: Colors.orange),
            title: Text('AntDesign Icon'),
          ),
          ListTile(
            leading: Icon(Ionicons.ios_airplane, color: Colors.blue),
            title: Text('Ionicons Icon'),
          ),
          ListTile(
            leading: Icon(Feather.camera, color: Colors.green),
            title: Text('Feather Icon'),
          ),
          ListTile(
            leading: Icon(MaterialCommunityIcons.google_nearby, color: Colors.red),
            title: Text('MaterialCommunityIcons Icon'),
          ),
        ],
      ),
    );
  }
}
