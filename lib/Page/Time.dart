import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Time extends StatelessWidget {
  List<SalesData> data = [
    SalesData('Jan', 12),
    SalesData('Feb', 13),
    SalesData('Mar', 14),
    SalesData('Apr', 15),
    SalesData('May', 20),
    SalesData('Jun', 15),
    SalesData('Jul', 20),
    SalesData('EWQ', 12),
    SalesData('aAS', 13),
    SalesData('XZC', 14),
    SalesData('FGH', 15),
    SalesData('RTY', 20),
    SalesData('YTR', 15),
    SalesData('YRT', 20),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("斷食時間"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 163, 165, 1),
          brightness: Brightness.dark,
        ),
        body: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("七日內斷食時間"),
                Container(
                  height: 400,
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries<SalesData, String>>[
                      LineSeries<SalesData, String>(
                        dataSource: data,
                        xValueMapper: (SalesData sales, _) => sales.month,
                        yValueMapper: (SalesData sales, _) => sales.sales,
                        name: 'sales',
                        dataLabelSettings: DataLabelSettings(isVisible: true),
                      )
                    ],
                  ),
                ),

              ],
           ),
          ],
        ));
  }
}

class SalesData {
  final String month;
  final double sales;

  SalesData(this.month, this.sales);
}
