import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Kg extends StatelessWidget{

  List< SalesData> data =[
    SalesData('Jan', 35),
    SalesData('Feb', 28),
    SalesData('Mar', 14),
    SalesData('Apr', 32),
    SalesData('May', 40),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Line Chart"),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(0,163,165,1),
        brightness: Brightness.dark ,
      ),
      body: Container(
        height: 400,
        child: SfCartesianChart(
          primaryXAxis:CategoryAxis() ,
          title: ChartTitle(text: 'Half Yearly Sales Analysis'),
          legend: Legend(isVisible: true,),
          series: <ChartSeries<SalesData,String>>[
            LineSeries<SalesData,String>(
              dataSource: data,
              xValueMapper: (SalesData sales,_)=>sales.month,
              yValueMapper: (SalesData sales,_)=>sales.sales,
              name: 'sales',
              dataLabelSettings: DataLabelSettings(isVisible: true),
            )




          ],
        ),
      ),
    );
  }
}
class SalesData{

  final String month;
  final double sales;

  SalesData(this.month,this.sales);

}
