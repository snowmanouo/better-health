import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'bar_chart_model.dart';

class Calorie extends StatelessWidget {
  Calorie({Key? key}) : super(key: key);
  final List<BarChartModel> data = [
    BarChartModel(
        year: "2017",
        financial: 450,
        color: charts.ColorUtil.fromDartColor(Colors.cyanAccent)),
    BarChartModel(
        year: "2018",
        financial: 400,
        color: charts.ColorUtil.fromDartColor(Colors.cyanAccent)),
    BarChartModel(
        year: "2019",
        financial: 250,
        color: charts.ColorUtil.fromDartColor(Colors.cyanAccent)),
    BarChartModel(
        year: "2020",
        financial: 470,
        color: charts.ColorUtil.fromDartColor(Colors.cyanAccent)),
    BarChartModel(
        year: "2021",
        financial: 580,
        color: charts.ColorUtil.fromDartColor(Colors.cyanAccent)),
    BarChartModel(
        year: "2022",
        financial: 375,
        color: charts.ColorUtil.fromDartColor(Colors.cyanAccent)),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<BarChartModel, String>> series = [
      charts.Series(
        id: "financial",
        data: data,
        domainFn: (BarChartModel series, _) => series.year,
        measureFn: (BarChartModel series, _) => series.financial,
        colorFn: (BarChartModel series, _) => series.color,
      )
    ];

    return Scaffold(
        appBar: AppBar(
          title: const Text("熱量紀錄"),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(0, 163, 165, 1),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Center(child: Text("七日內熱量紀錄")),
                Container(
                    height: 400,
                    padding: EdgeInsets.all(10),
                    child: charts.BarChart(
                      series,
                      animate: true,
                    )),
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
        )
    );
  }
}
