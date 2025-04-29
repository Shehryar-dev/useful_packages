
import '../../constants/screen_paths.dart';

class FeedbackExampleScreen extends StatelessWidget {
  const FeedbackExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BetterFeedback(
      theme: FeedbackThemeData(
        background: Colors.black.withOpacity(0.6),
        feedbackSheetColor: Colors.white,
      ),
      // ✅ Yeh new version mein valid hai
      child: Builder(
        builder: (context) => Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title:  Text('Feedback Package Example',style: Theme.of(context).textTheme.titleMedium!.apply(color: Colors.white),),
            backgroundColor: Colors.indigo.shade900,
          ),
          body: Center(
            child: ElevatedButton.icon(
              onPressed: () {
                BetterFeedback.of(context).show((feedback) {
                  debugPrint('Feedback: ${feedback.text}');
                  debugPrint('Screenshot: ${feedback.screenshot.length} bytes');
                });
              },
              icon: const Icon(Icons.feedback_outlined, color: Colors.white,),
              label: const Text('Send Feedback', style: TextStyle(color: Colors.white),),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.indigo.shade900,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
