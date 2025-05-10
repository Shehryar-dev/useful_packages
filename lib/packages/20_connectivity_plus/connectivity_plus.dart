import 'package:flutter/material.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class ConnectivityExample extends StatefulWidget {
  const ConnectivityExample({super.key});

  @override
  State<ConnectivityExample> createState() => _ConnectivityExampleState();
}

class _ConnectivityExampleState extends State<ConnectivityExample> {
  String connectionStatus = 'Checking...';

  @override
  void initState() {
    super.initState();

    Connectivity().onConnectivityChanged.listen((List<ConnectivityResult> results) {
      final result = results.isNotEmpty ? results.first : ConnectivityResult.none;
      setState(() {
        connectionStatus = _getStatus(result);
      });
    });
  }

  String _getStatus(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile:
        return '📶 Connected to Mobile Data';
      case ConnectivityResult.wifi:
        return '📡 Connected to WiFi';
      case ConnectivityResult.ethernet:
        return '🔌 Connected via Ethernet';
      case ConnectivityResult.none:
        return '❌ No Internet Connection';
      default:
        return 'Unknown';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📲 Connectivity Status')),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.blue),
          ),
          child: Text(
            connectionStatus,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
