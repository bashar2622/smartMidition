import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
//  syncfusion_flutter_charts: ^23.1.44

class Charts extends StatelessWidget {
  Charts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ChartModels> data = [
      ChartModels('CIA RIO', 20000),
      ChartModels('BMW', 50000),
      ChartModels('Mersedec', 30000),
      ChartModels('Rolls Roes', 70000),
      ChartModels('Verna', 60000),
    ];
    return SfCartesianChart(
      borderColor: Colors.white,
      plotAreaBorderColor: Colors.white,
      plotAreaBackgroundColor: Colors.white,
      primaryXAxis: CategoryAxis(),
      primaryYAxis: NumericAxis(
        minimum: 0,
        maximum: 80000,
      ),
      tooltipBehavior: TooltipBehavior(enable: true),
      series: <ChartSeries<ChartModels, String>>[
        ColumnSeries(
            dataSource: data,
            xValueMapper: (ChartModels data, index) => data.title,
            yValueMapper: (ChartModels data, index) => data.value)
      ],
    );
  }
}

class ChartModels {
  final String title;
  final int value;
  ChartModels(this.title, this.value);
}
