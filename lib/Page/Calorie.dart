import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Calorie extends StatelessWidget {
  List<SalesData1> data1 = [
    SalesData1('9/1', 11111, 95566),
    SalesData1('9/2', 44444, 44566),
    SalesData1('9/3', 45465, 34568),
    SalesData1('9/4', 45665, 64540),
    SalesData1('9/5', 45647, 21445),
    SalesData1('9/6', 89456, 72545),
    SalesData1('9/7', 64444, 43645),
  ];
  List< SalesData2> data2 = [
    SalesData2('9/8', 11111, 95566),
    SalesData2('9/9', 44444, 44566),
    SalesData2('9/10', 45465, 34568),
    SalesData2('9/11', 45665, 64540),
    SalesData2('9/12', 45647, 21445),
    SalesData2('9/13', 89456, 72545),
    SalesData2('9/14', 64444, 43645),
  ];
  List< SalesData3> data3 = [
    SalesData3('9/15', 11111, 95566),
    SalesData3('9/16', 44444, 44566),
    SalesData3('9/17', 45465, 34568),
    SalesData3('9/18', 45665, 64540),
    SalesData3('9/19', 45647, 21445),
    SalesData3('9/20', 89456, 72545),
    SalesData3('9/21', 64444, 43645),
  ];
  List<SalesData4> data4 = [
    SalesData4('9/22', 11111, 95566),
    SalesData4('9/23', 44444, 44566),
    SalesData4('9/24', 45465, 34568),
    SalesData4('9/25', 45665, 64540),
    SalesData4('9/26', 45647, 21445),
    SalesData4('9/27', 89456, 72545),
    SalesData4('9/28', 64444, 43645),
  ];
  List< SalesData5> data5 = [
    SalesData5('9/29', 11111, 95566),
    SalesData5('9/30', 44444, 44566),
    SalesData5('9/31', 45465, 34568),
    SalesData5('0',0 ,0 ),
    SalesData5('0',0 ,0 ),
    SalesData5('0',0 ,0 ),
    SalesData5('0',0 ,0 ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("熱量紀錄"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 163, 165, 1),
          brightness: Brightness.dark,
        ),
        body: ListView(children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("本月斷食時間9/1~9/7"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      primaryYAxis: NumericAxis(minimum: 0, maximum: 100000),
                      series: <ChartSeries<SalesData1, String>>[
                        // Renders column chart
                        ColumnSeries<SalesData1, String>(
                          dataSource: data1,
                          xValueMapper: (SalesData1 sales, _) => sales.x1,
                          yValueMapper: (SalesData1 sales, _) => sales.y1,
                          pointColorMapper: (SalesData1 sales, _) =>
                              Color.fromRGBO(22, 93, 255, 1),
                        ),
                        ColumnSeries<SalesData1, String>(
                          dataSource: data1,
                          xValueMapper: (SalesData1 sales, _) => sales.x1,
                          yValueMapper: (SalesData1 sales, _) => sales.yy1,
                          pointColorMapper: (SalesData1 sales, _) =>
                              Color.fromRGBO(18, 213, 214, 1),
                        ),
                      ]),
                ),
                Text("本月斷食時間9/8~9/14"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      primaryYAxis: NumericAxis(minimum: 0, maximum: 100000),
                      series: <ChartSeries<SalesData2, String>>[
                        // Renders column chart
                        ColumnSeries<SalesData2, String>(
                          dataSource: data2,
                          xValueMapper: (SalesData2 sales, _) => sales.x2,
                          yValueMapper: (SalesData2 sales, _) => sales.y2,
                          pointColorMapper: (SalesData2 sales, _) =>
                              Color.fromRGBO(22, 93, 255, 1),
                        ),
                        ColumnSeries<SalesData2, String>(
                          dataSource: data2,
                          xValueMapper: (SalesData2 sales, _) => sales.x2,
                          yValueMapper: (SalesData2 sales, _) => sales.yy2,
                          pointColorMapper: (SalesData2 sales, _) =>
                              Color.fromRGBO(18, 213, 214, 1),
                        ),
                      ]),
                ),
                Text("本月斷食時間9/15~9/21"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      primaryYAxis: NumericAxis(minimum: 0, maximum: 100000),
                      series: <ChartSeries<SalesData3, String>>[
                        // Renders column chart
                        ColumnSeries<SalesData3, String>(
                          dataSource: data3,
                          xValueMapper: (SalesData3 sales, _) => sales.x3,
                          yValueMapper: (SalesData3 sales, _) => sales.y3,
                          pointColorMapper: (SalesData3 sales, _) =>
                              Color.fromRGBO(22, 93, 255, 1),
                        ),
                        ColumnSeries<SalesData3, String>(
                          dataSource: data3,
                          xValueMapper: (SalesData3 sales, _) => sales.x3,
                          yValueMapper: (SalesData3 sales, _) => sales.yy3,
                          pointColorMapper: (SalesData3 sales, _) =>
                              Color.fromRGBO(18, 213, 214, 1),
                        ),
                      ]),
                ),
                Text("本月斷食時間9/22~9/28"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      primaryYAxis: NumericAxis(minimum: 0, maximum: 100000),
                      series: <ChartSeries<SalesData4, String>>[
                        // Renders column chart
                        ColumnSeries<SalesData4, String>(
                          dataSource: data4,
                          xValueMapper: (SalesData4 sales, _) => sales.x4,
                          yValueMapper: (SalesData4 sales, _) => sales.y4,
                          pointColorMapper: (SalesData4 sales, _) =>
                              Color.fromRGBO(22, 93, 255, 1),
                        ),
                        ColumnSeries<SalesData4, String>(
                          dataSource: data4,
                          xValueMapper: (SalesData4 sales, _) => sales.x4,
                          yValueMapper: (SalesData4 sales, _) => sales.yy4,
                          pointColorMapper: (SalesData4 sales, _) =>
                              Color.fromRGBO(18, 213, 214, 1),
                        ),
                      ]),
                ),
                Text("本月斷食時間9/29~9/31"),
                Container(
                  height: 362,
                  child: SfCartesianChart(
                      primaryXAxis: CategoryAxis(),
                      primaryYAxis: NumericAxis(minimum: 0, maximum: 100000),
                      series: <ChartSeries<SalesData5, String>>[
                        // Renders column chart
                        ColumnSeries<SalesData5, String>(
                          dataSource: data5,
                          xValueMapper: (SalesData5 sales, _) => sales.x5,
                          yValueMapper: (SalesData5 sales, _) => sales.y5,
                          pointColorMapper: (SalesData5 sales, _) =>
                              Color.fromRGBO(22, 93, 255, 1),
                        ),
                        ColumnSeries<SalesData5, String>(
                          dataSource: data5,
                          xValueMapper: (SalesData5 sales, _) => sales.x5,
                          yValueMapper: (SalesData5 sales, _) => sales.yy5,
                          pointColorMapper: (SalesData5 sales, _) =>
                              Color.fromRGBO(18, 213, 214, 1),
                        ),
                      ]),
                ),
              ])
        ]));
  }
}

class SalesData1 {
  final String x1;
  final double y1;
  final double yy1;

  SalesData1(this.x1, this.y1, this.yy1);
}
class SalesData2 {
  final String x2;
  final double y2;
  final double yy2;

  SalesData2(this.x2, this.y2, this.yy2);
}
class SalesData3{
  final String x3;
  final double y3;
  final double yy3;

  SalesData3(this.x3, this.y3, this.yy3);
}
class SalesData4 {
  final String x4;
  final double y4;
  final double yy4;

  SalesData4(this.x4, this.y4, this.yy4);
}
class SalesData5 {
  final String x5;
  final double y5;
  final double yy5;

  SalesData5(this.x5, this.y5, this.yy5);
}