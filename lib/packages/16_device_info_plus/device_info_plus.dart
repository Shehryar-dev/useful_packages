import 'package:flutter/material.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'dart:io';

class DeviceInfoScreen extends StatefulWidget {
  const DeviceInfoScreen({super.key});

  @override
  State<DeviceInfoScreen> createState() => _DeviceInfoScreenState();
}

class _DeviceInfoScreenState extends State<DeviceInfoScreen> {
  String _info = 'Fetching device info...';

  @override
  void initState() {
    super.initState();
    _fetchDeviceInfo();
  }

  Future<void> _fetchDeviceInfo() async {
    final deviceInfo = DeviceInfoPlugin();
    String infoText = '';

    if (Platform.isAndroid) {
      final androidInfo = await deviceInfo.androidInfo;
      infoText = '''
Model: ${androidInfo.model}
Manufacturer: ${androidInfo.manufacturer}
Android Version: ${androidInfo.version.release}
SDK: ${androidInfo.version.sdkInt}
Device: ${androidInfo.device}
Brand: ${androidInfo.brand}
''';
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfo.iosInfo;
      infoText = '''
Model: ${iosInfo.utsname.machine}
System: ${iosInfo.systemName} ${iosInfo.systemVersion}
Device Name: ${iosInfo.name}
Identifier: ${iosInfo.identifierForVendor}
''';
    } else {
      infoText = 'Unsupported platform';
    }

    setState(() => _info = infoText);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('📱 Device Info')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue.shade50,
            borderRadius: BorderRadius.circular(16),
            boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
          ),
          child: Text(
            _info,
            style: const TextStyle(fontSize: 16, fontFamily: 'monospace'),
          ),
        ),
      ),
    );
  }
}
