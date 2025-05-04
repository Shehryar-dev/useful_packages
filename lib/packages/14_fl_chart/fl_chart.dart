import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class FLChartExample extends StatelessWidget {
  const FLChartExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D1117),
      appBar: AppBar(
        title: const Text('Weekly Spending'),
        backgroundColor: const Color(0xFF161B22),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceAround,
            maxY: 20,
            barTouchData: BarTouchData(
              enabled: true,
              touchTooltipData: BarTouchTooltipData(
                // tooltipBgColor: Colors.grey[800],
                getTooltipItem: (group, _, rod, __) {
                  return BarTooltipItem(
                    '${rod.toY}k',
                    const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                  );
                },
              ),
            ),
            titlesData: FlTitlesData(
              leftTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (value, meta) {
                    const week = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
                    return Text(
                      week[value.toInt()],
                      style: const TextStyle(color: Colors.white),
                    );
                  },
                  reservedSize: 32,
                ),
              ),
            ),
            borderData: FlBorderData(show: false),
            barGroups: List.generate(7, (index) {
              final yValues = [12, 10, 14, 8, 15, 13, 9];
              return BarChartGroupData(
                x: index,
                barRods: [
                  BarChartRodData(
                    toY: yValues[index].toDouble(),
                    width: 22,
                    borderRadius: BorderRadius.circular(4),
                    gradient: const LinearGradient(
                      colors: [Colors.purple, Colors.pinkAccent],
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}
