import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherExample extends StatelessWidget {
  const UrlLauncherExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📦 url_launcher Example', style: TextStyle(fontSize: 16, color: Colors.white),),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              onPressed: () async {
                final Uri url = Uri.parse('https://flutter.dev');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
              icon: const Icon(Icons.link),
              label: const Text('Open Flutter Website'),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () async {
                final Uri email = Uri(
                  scheme: 'mailto',
                  path: 'support@example.com',
                  query: 'subject=Support&body=Need help!',
                );
                await launchUrl(email);
              },
              icon: const Icon(Icons.email),
              label: const Text('Send Email'),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () async {
                final Uri call = Uri.parse('tel:+1234567890');
                await launchUrl(call);
              },
              icon: const Icon(Icons.phone),
              label: const Text('Call Now'),
            ),
          ],
        ),
      ),
    );
  }
}
