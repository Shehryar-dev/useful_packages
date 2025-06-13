import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class IntlExampleScreen extends StatelessWidget {
  const IntlExampleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();

    final formattedUS = DateFormat.yMMMMd('en_US').format(now);
    final formattedDE = DateFormat.yMMMMd('de_DE').format(now);
    final formattedJP = DateFormat.yMMMMd('ja_JP').format(now);

    final number = 1234567.89;
    final formattedNumberUS = NumberFormat.currency(locale: 'en_US', symbol: '\$').format(number);
    final formattedNumberFR = NumberFormat.currency(locale: 'fr_FR', symbol: '€').format(number);

    return Scaffold(
      appBar: AppBar(title: const Text('Intl Formatting Example')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('📅 Date Formats:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('US: $formattedUS'),
            Text('DE: $formattedDE'),
            Text('JP: $formattedJP'),
            const SizedBox(height: 20),
            const Text('💵 Number Formats:', style: TextStyle(fontWeight: FontWeight.bold)),
            Text('US currency: $formattedNumberUS'),
            Text('FR currency: $formattedNumberFR'),
          ],
        ),
      ),
    );
  }
}
