import 'package:flutter/material.dart';
import 'package:feedback/feedback.dart';

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
            title: const Text('Feedback Package Example'),
            backgroundColor: Colors.teal,
          ),
          body: Center(
            child: ElevatedButton.icon(
              onPressed: () {
                BetterFeedback.of(context).show((feedback) {
                  debugPrint('Feedback: ${feedback.text}');
                  debugPrint('Screenshot: ${feedback.screenshot.length} bytes');
                });
              },
              icon: const Icon(Icons.feedback_outlined),
              label: const Text('Send Feedback'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
