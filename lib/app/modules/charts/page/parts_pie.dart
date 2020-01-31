import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PartsPieExample extends StatefulWidget {
  PartsPieExample({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PartsPieExampleState createState() => _PartsPieExampleState();
}

class _PartsPieExampleState extends State<PartsPieExample> {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('David', 25, 'David', Colors.purple[50]),
      ChartData('Steve', 38, 'Steve', Colors.purple[100]),
      ChartData('Jack', 34, 'Jack', Colors.purple[200]),
      ChartData('Others', 42, 'Others', Colors.purple[300]),
      ChartData('Julio', 52, 'Julio', Colors.purple[400])
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text('PartsPie'),
      ),
      body: Center(
        child: Container(
          child: SfCircularChart(
            series: <CircularSeries>[
              // Render pie chart
              PieSeries<ChartData, String>(
                dataSource: chartData,
                pointColorMapper: (ChartData data, _) => data.color,
                xValueMapper: (ChartData data, _) => data.x,
                yValueMapper: (ChartData data, _) => data.y,
                dataLabelMapper: (ChartData data, _) => data.label,
                dataLabelSettings: DataLabelSettings(
                    isVisible: true,
                    angle: 30,
                    borderColor: Colors.blue,
                    labelAlignment: ChartDataLabelAlignment.middle,
                    color: Colors.red),
                radius: '50%',
                animationDuration: 2000,
                enableSmartLabels: true,
                enableTooltip: true,
                startAngle: 1,
                endAngle: 180,
                legendIconType: LegendIconType.circle,
                explodeAll: true,
                name: 'Produção por Funcionario',
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, this.label, [this.color]);
  final String x;
  final double y;
  final Color color;
  final String label;
}
