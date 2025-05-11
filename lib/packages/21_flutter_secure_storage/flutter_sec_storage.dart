import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageExample extends StatefulWidget {
  const SecureStorageExample({Key? key}) : super(key: key);

  @override
  _SecureStorageExampleState createState() => _SecureStorageExampleState();
}

class _SecureStorageExampleState extends State<SecureStorageExample> {
  final _storage = const FlutterSecureStorage();
  String _storedValue = '';

  Future<void> _writeValue() async {
    await _storage.write(key: 'secureKey', value: 'SecureData123');
    setState(() {
      _storedValue = 'SecureData123';
    });
  }

  Future<void> _readValue() async {
    String? value = await _storage.read(key: 'secureKey');
    setState(() {
      _storedValue = value ?? 'No Data Found';
    });
  }

  Future<void> _deleteValue() async {
    await _storage.delete(key: 'secureKey');
    setState(() {
      _storedValue = 'Data Deleted';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('🔐 Secure Storage Example')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Stored Value: $_storedValue'),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _writeValue,
              child: const Text('Write Secure Data'),
            ),
            ElevatedButton(
              onPressed: _readValue,
              child: const Text('Read Secure Data'),
            ),
            ElevatedButton(
              onPressed: _deleteValue,
              child: const Text('Delete Secure Data'),
            ),
          ],
        ),
      ),
    );
  }
}
