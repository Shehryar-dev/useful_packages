import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class IconlyScreen extends StatelessWidget {
  const IconlyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Iconly Icons Showcase', style: TextStyle(color: Colors.white, fontSize: 16),),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            _buildIconRow('Light', IconlyLight.home, IconlyLight.notification, IconlyLight.message),
            const Divider(),
            _buildIconRow('Bold', IconlyBold.home, IconlyBold.notification, IconlyBold.message),
            const Divider(),
            _buildIconRow('Broken', IconlyBroken.home, IconlyBroken.notification, IconlyBroken.message),
          ],
        ),
      ),
    );
  }

  Widget _buildIconRow(String label, IconData icon1, IconData icon2, IconData icon3) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(icon1, size: 32),
            Icon(icon2, size: 32),
            Icon(icon3, size: 32),
          ],
        ),
      ],
    );
  }
}
