import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieExample extends StatelessWidget {
  const LottieExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple.shade50,
      appBar: AppBar(
        title: const Text('🎨 Lottie Animation',style: TextStyle(color: Colors.white, fontSize: 16),),
        backgroundColor: Colors.deepPurple,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(
            'assets/lottie/pencil_draw.json', // Add this file in your assets
            height: 250,
            repeat: true,
            reverse: false,
            animate: true,
          ),
          const SizedBox(height: 30),
          const Text(
            'Launching into Flutter!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 15),
            child: Text(
              'Lottie makes beautiful animations easy to integrate and enhances UI/UX seamlessly.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Explore More', style: TextStyle(color: Colors.white, fontSize: 16),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.deepPurple,
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
            ),
          )
        ],
      ),
    );
  }
}
