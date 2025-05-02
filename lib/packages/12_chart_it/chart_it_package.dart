import 'package:flutter/material.dart';
import 'package:chart_it/chart_it.dart';

class ChartItExample extends StatelessWidget {
  const ChartItExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chart It Example'),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: Center(
        child: PieChart(
          data: PieSeries(
            donutRadius: 50.0,
            donutSpaceColor: Colors.white,
            donutLabel: () => 'Market Shares',
            slices: <SliceData>[
              SliceData(
                style: const SliceDataStyle(radius: 105.0, color: Colors.red),
                label: (percent, value) => 'Tesla',
                value: 34,
              ),
              SliceData(
                style: const SliceDataStyle(radius: 90.0, color: Colors.blueGrey),
                label: (percent, value) => 'Space X',
                value: 18,
              ),
              SliceData(
                style: const SliceDataStyle(radius: 90.0, color: Colors.green),
                label: (percent, value) => 'Google',
                value: 42,
              ),
              SliceData(
                style: const SliceDataStyle(radius: 90.0, color: Colors.cyanAccent),
                label: (percent, value) => 'Microsoft',
                value: 57,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
