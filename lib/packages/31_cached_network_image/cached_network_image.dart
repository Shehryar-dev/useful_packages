
import '../../constants/screen_paths.dart';

class CachedImageExampleScreen extends StatelessWidget {
  const CachedImageExampleScreen({super.key});

  final imageUrl = "https://i.imgur.com/QwhZRyL.png"; // sample image

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Cached Network Image Demo", style: TextStyle(fontSize: 16),)),
      body: Center(
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => const CircularProgressIndicator(),
          errorWidget: (context, url, error) => const Icon(Icons.error, size: 64, color: Colors.red),
          imageBuilder: (context, imageProvider) => Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
            ),
          ),
          fadeInDuration: const Duration(milliseconds: 500),
        ),
      ),
    );
  }
}
