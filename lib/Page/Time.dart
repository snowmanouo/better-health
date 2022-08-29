import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Time extends StatelessWidget {
  List<SalesData> data = [
    SalesData('Jan', 12),
    SalesData('Feb', 13),
    SalesData('Mar', 14),
    SalesData('Apr', 15),
    SalesData('May', 20),
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
              children: [
                Center(child: Text("七日內斷食時間")),
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
                Text("概覽"),
                Column(
                  children: [
                    Row(
                      children: [
                        Container(width: 214,child: Text("維持體重或塑型需要攝入多少千卡")),
                        SizedBox(width: 29),
                        Container(width: 85,child: Text("1688.0千卡")),
                      ],
                    ),
                    Row(
                      children: [
                        Container(width: 214,child: Text("今日累積攝入了多少千卡")),
                        SizedBox(width: 29),
                        Container(width: 85,child: Text("549.0千卡")),
                      ],
                    ),
                    Row(
                      children: [
                        Container(width: 214,child: Text("今天運動累積消耗多少千卡")),
                        SizedBox(width: 29),
                        Container(width: 85,child: Text("0.0千卡")),
                      ],
                    ),
                 ],
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
