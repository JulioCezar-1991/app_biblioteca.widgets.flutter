import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PartsLineExample extends StatefulWidget {
  PartsLineExample({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PartsLineExampleState createState() => _PartsLineExampleState();
}

class _PartsLineExampleState extends State<PartsLineExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('PartsLine'),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: SfCartesianChart(
                primaryXAxis: CategoryAxis(),
                // Chart title
                title: ChartTitle(
                    text: 'Analise Pagar/Receber 2019',
                    alignment: ChartAlignment.near),

                crosshairBehavior: CrosshairBehavior(enable: true),
                // Enable legend
                legend: Legend(isVisible: true),
                // Enable tooltip
                tooltipBehavior: TooltipBehavior(enable: true),
                series: <ChartSeries<SalesData, String>>[
                  //Contas a pagar
                  LineSeries<SalesData, String>(
                      dataSource: <SalesData>[
                        SalesData('Jan', 37, Colors.blue),
                        SalesData('Fev', 40, Colors.pink),
                        SalesData('Mar', 40, Colors.purple),
                        SalesData('Apr', 40, Colors.blue),
                        SalesData('Mai', 80, Colors.blue),
                        SalesData('Jun', 50, Colors.blue),
                        SalesData('Jul', 75, Colors.blue),
                        SalesData('Ago', 35, Colors.blue),
                        SalesData('Set', 60, Colors.blue),
                        SalesData('Out', 55, Colors.blue),
                        SalesData('Nov', 51, Colors.blue),
                        SalesData('Dez', 66, Colors.blue),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,

                      //Line
                      color: Colors.black,
                      animationDuration: 900,
                      width: 4,
                      isVisible: true,
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                      dashArray: <double>[5, 5],
                      // Marker
                      name: "Ganhos",
                      markerSettings: MarkerSettings(
                        shape: DataMarkerType.diamond,
                        color: Colors.white,
                        borderColor: Colors.blueAccent,
                        isVisible: true,
                        width: 8,
                        height: 8,
                        borderWidth: 1,
                      ),

                      //Legend
                      legendItemText: 'Contas a Pagar',
                      isVisibleInLegend: true,
                      opacity: 0.4,
                      legendIconType: LegendIconType.diamond,
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.centerRight,
                          colors: [Colors.blue, Colors.red]),
                      sortingOrder: SortingOrder.descending),

                  //

                  //Contas a receber
                  LineSeries<SalesData, String>(
                      dataSource: <SalesData>[
                        SalesData('Jan', 55, Colors.blue),
                        SalesData('Fev', 28, Colors.blue),
                        SalesData('Mar', 56, Colors.blue),
                        SalesData('Apr', 32, Colors.blue),
                        SalesData('Mai', 40, Colors.blue),
                        SalesData('Jun', 38, Colors.blue),
                        SalesData('Jul', 48, Colors.blue),
                        SalesData('Ago', 35, Colors.blue),
                        SalesData('Set', 28, Colors.blue),
                        SalesData('Out', 28, Colors.blue),
                        SalesData('Nov', 45, Colors.blue),
                        SalesData('Dez', 33, Colors.blue),
                      ],
                      xValueMapper: (SalesData sales, _) => sales.year,
                      yValueMapper: (SalesData sales, _) => sales.sales,
                      markerSettings: MarkerSettings(
                          shape: DataMarkerType.circle,
                          color: Colors.red,
                          borderColor: Colors.red),
                      dataLabelSettings: DataLabelSettings(isVisible: true),
                      color: Colors.red,
                      legendItemText: 'Contas a receber')
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SalesData {
  SalesData(this.year, this.sales, this.segmentColor);

  final String year;
  final double sales;
  final Color segmentColor;
}
