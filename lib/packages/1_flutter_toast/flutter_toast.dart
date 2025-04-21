import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastExample extends StatelessWidget {
  const FlutterToastExample({super.key});

  void _showToast() {
    Fluttertoast.showToast(
      msg: "Hello from FlutterToast!",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: Colors.deepPurple,
      textColor: Colors.white,
      fontSize: 16.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('FlutterToast Example')),
      body: Center(
        child: ElevatedButton.icon(
          onPressed: _showToast,
          icon: const Icon(Icons.message),
          label: const Text('Show Toast'),
        ),
      ),
    );
  }
}
