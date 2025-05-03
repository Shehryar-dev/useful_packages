
import '../../constants/screen_paths.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class SalesData {
  final String year;
  final double sales;

  SalesData(this.year, this.sales);
}

class SyncfusionChartItem extends StatelessWidget {
  const SyncfusionChartItem({super.key});

  @override
  Widget build(BuildContext context) {
    final List<SalesData> chartData = [
      SalesData('2019', 35),
      SalesData('2020', 28),
      SalesData('2021', 34),
      SalesData('2022', 32),
      SalesData('2023', 40),
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Syncfusion Chart Example', style: TextStyle(color: Colors.white, fontSize: 16),),
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900, ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SfCartesianChart(
          title: ChartTitle(text: 'Annual Sales'),
          legend: Legend(isVisible: true),
          tooltipBehavior: TooltipBehavior(enable: true),
          primaryXAxis: CategoryAxis(),
          series: <CartesianSeries>[
            LineSeries<SalesData, String>(
              dataSource: chartData,
              xValueMapper: (SalesData data, _) => data.year,
              yValueMapper: (SalesData data, _) => data.sales,
              name: 'Sales',
              dataLabelSettings: const DataLabelSettings(isVisible: true),
            ),
          ],
        ),
      ),
    );
  }
}
