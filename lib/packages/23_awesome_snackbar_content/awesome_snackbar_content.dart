

import '../../constants/screen_paths.dart';

class AwesomeSnackbarExample extends StatelessWidget {
  const AwesomeSnackbarExample({Key? key}) : super(key: key);

  void _showAwesomeSnackbar(BuildContext context) {
    final snackBar = SnackBar(
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      content: AwesomeSnackbarContent(
        title: 'Success!',
        message: 'Your operation was successful.',
        contentType: ContentType.success,
      ),
    );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Awesome Snackbar Example', style: TextStyle(color: Colors.white, fontSize: 16),),
        backgroundColor: Colors.indigo.shade900,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _showAwesomeSnackbar(context),
          child: const Text('Show Awesome Snackbar'),
        ),
      ),
    );
  }
}
