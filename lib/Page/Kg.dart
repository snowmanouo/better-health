import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:project/Page/LoginPage.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import "package:intl/intl.dart";

class Kg extends StatelessWidget {
  List<SalesData1> data1 = [
    SalesData1('9/1', 11 ),
    SalesData1('9/2', 4 ),
    SalesData1('9/3', 5 ),
    SalesData1('9/4', 5),
    SalesData1('9/5', 7),
    SalesData1('9/6', 6),
    SalesData1('9/7', 4),
  ];
  List<SalesData2> data2 = [
    SalesData2('9/8', 11),
    SalesData2('9/9', 4),
    SalesData2('9/10', 5),
    SalesData2('9/11', 6),
    SalesData2('9/12', 7),
    SalesData2('9/13', 8),
    SalesData2('9/14', 6),
  ];
  List<SalesData3> data3 = [
    SalesData3('9/15', 11),
    SalesData3('9/16', 4),
    SalesData3('9/17', 5),
    SalesData3('9/18', 5),
    SalesData3('9/19', 7),
    SalesData3('9/20', 6),
    SalesData3('9/21', 4),
  ];
  List<SalesData4> data4 = [
    SalesData4('9/22', 11),
    SalesData4('9/23', 4),
    SalesData4('9/24', 5),
    SalesData4('9/25', 5),
    SalesData4('9/26', 7),
    SalesData4('9/27', 6),
    SalesData4('9/28', 4),
  ];
  List<SalesData5> data5 = [
    SalesData5('9/29', 11),
    SalesData5('9/30', 4),
    SalesData5('9/31', 5),
    SalesData5('0',0 ),
    SalesData5('0',0 ),
    SalesData5('0',0 ),
    SalesData5('0',0 ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("體重紀錄"),
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
                Text("本月體重變化9/1~9/7"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(minimum: 0, maximum: 100),
                    series: <ChartSeries<SalesData1, String>>[
                      LineSeries<SalesData1, String>(
                        dataSource: data1,
                        color: Color.fromRGBO(0, 163, 165, 1),
                        xValueMapper: (SalesData1 sales, _) => sales.x1,
                        yValueMapper: (SalesData1 sales, _) => sales.y1,
                        markerSettings: MarkerSettings(isVisible: true),
                        name: 'sales',
                        dataLabelSettings: DataLabelSettings(isVisible: true),
                      )
                    ],
                  ),
                ),
                Text("本月體重變化9/8~9/14"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(minimum: 0, maximum: 100),
                    series: <ChartSeries<SalesData2, String>>[
                      LineSeries<SalesData2, String>(
                        dataSource: data2,
                        color: Color.fromRGBO(0, 163, 165, 1),
                        xValueMapper: (SalesData2 sales, _) => sales.x2,
                        yValueMapper: (SalesData2 sales, _) => sales.y2,
                        markerSettings: MarkerSettings(isVisible: true),

                        dataLabelSettings: DataLabelSettings(isVisible: true),
                      )
                    ],
                  ),
                ),
                Text("本月體重變化9/15~9/21"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(minimum: 0, maximum: 100),
                    series: <ChartSeries<SalesData3, String>>[
                      LineSeries<SalesData3, String>(
                        dataSource: data3,
                        color: Color.fromRGBO(0, 163, 165, 1),
                        xValueMapper: (SalesData3 sales, _) => sales.x3,
                        yValueMapper: (SalesData3 sales, _) => sales.y3,
                        markerSettings: MarkerSettings(isVisible: true),

                        dataLabelSettings: DataLabelSettings(isVisible: true),
                      )
                    ],
                  ),
                ),
                Text("本月體重變化9/22~9/28"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(minimum: 0, maximum: 100),
                    series: <ChartSeries<SalesData4, String>>[
                      LineSeries<SalesData4, String>(
                        dataSource: data4,
                        color: Color.fromRGBO(0, 163, 165, 1),
                        xValueMapper: (SalesData4 sales, _) => sales.x4,
                        yValueMapper: (SalesData4 sales, _) => sales.y4,
                        markerSettings: MarkerSettings(isVisible: true),

                        dataLabelSettings: DataLabelSettings(isVisible: true),
                      )
                    ],
                  ),
                ),
                Text("本月體重變化9/29~9/31"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                    primaryXAxis: CategoryAxis(),
                    primaryYAxis: NumericAxis(minimum: 0, maximum: 100),
                    series: <ChartSeries<SalesData5, String>>[
                      LineSeries<SalesData5, String>(
                        dataSource: data5,
                        color: Color.fromRGBO(0, 163, 165, 1),
                        xValueMapper: (SalesData5 sales, _) => sales.x5,
                        yValueMapper: (SalesData5 sales, _) => sales.y5,
                        markerSettings: MarkerSettings(isVisible: true),

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

class SalesData1 {
  final String x1;
  final double y1;


  SalesData1(this.x1, this.y1 );
}
class SalesData2 {
  final String x2;
  final double y2;


  SalesData2(this.x2, this.y2 );
}
class SalesData3{
  final String x3;
  final double y3;


  SalesData3(this.x3, this.y3);
}
class SalesData4 {
  final String x4;
  final double y4;


  SalesData4(this.x4, this.y4);
}
class SalesData5 {
  final String x5;
  final double y5;


  SalesData5(this.x5, this.y5);
}
