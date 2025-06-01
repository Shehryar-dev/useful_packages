import 'package:device_preview/device_preview.dart';
import 'constants/screen_paths.dart';
import 'dart:io';

void main() {
  if (kIsWeb || (!kIsWeb && !Platform.isAndroid)) {
    runApp(DevicePreview(builder: (context) => MyApp()));
  } else {
    runApp(MyApp());
  }
}

