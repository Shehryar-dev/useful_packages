import 'package:device_preview/device_preview.dart';
import 'constants/screen_paths.dart';

void main() {
  if (kIsWeb || (!kIsWeb && !Platform.isAndroid)) {
    runApp(DevicePreview(builder: (context) => MyApp()));
  } else {
    runApp(MyApp());
  }
}

