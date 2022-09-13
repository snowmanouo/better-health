import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../helpers/Constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';
import 'Mysetting.dart';
import 'Calorie.dart';
import 'Time.dart';
import 'Kg.dart';
import 'Fat.dart';
import 'package:r_calendar/r_calendar.dart';

class MyselfPage extends StatelessWidget {
  late DateTime _myDateTime;
  String time ='?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("個人數據"),
        backgroundColor: Color.fromRGBO(0, 163, 165, 1),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        children: [
          Column(
            children: [
              Container(
                height: 72,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.transparent, spreadRadius: 3),
                  ],
                ),
                child: Row(children: [
                  Text("熱量紀錄",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(85, 85, 85, 1),
                      )),
                  SizedBox(
                    height: 0,
                    width: 150,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Calorie()),
                      );
                    },
                    icon: Icon(Icons.chevron_right),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
                width: 0,
              ),
              Container(
                height: 72,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.transparent, spreadRadius: 3),
                  ],
                ),
                child: Row(children: [
                  Text("斷食時間",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(85, 85, 85, 1),
                      )),
                  SizedBox(
                    height: 0,
                    width: 150,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Time()),
                      );
                    },
                    icon: Icon(Icons.chevron_right),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
                width: 0,
              ),
              Container(
                height: 72,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.transparent, spreadRadius: 3),
                  ],
                ),
                child: Row(children: [
                  Text("體重",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(85, 85, 85, 1),
                      )),
                  Align(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
                        onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text('每日體重'),

                                content: const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: '請輸入今日體重',
                                  ),
                                ),
                                actions: <Widget>[
                                  ElevatedButton(
                                      onPressed: () async {
                                        _myDateTime = (await showDatePicker(
                                          context: context,
                                          initialDate: DateTime.now(),
                                          firstDate: DateTime(2010),
                                          lastDate: DateTime(2025),
                                        ))!;

                                      },
                                      child: Text('請選擇日期')),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'OK'),
                                    child: Text('OK'),
                                  ),
                                  TextButton(
                                    onPressed: () =>
                                        Navigator.pop(context, 'Cancel'),
                                    child: Text('Cancel'),
                                  ),
                                ],
                              ),
                            ),
                        child: Row(
                          children: [Icon(Icons.settings_applications)],
                        )),
                  ),
                  SizedBox(
                    height: 0,
                    width: 120,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Kg()),
                      );
                    },
                    icon: Icon(Icons.chevron_right),
                  ),
                ]),
              ),
              SizedBox(
                height: 10,
                width: 0,
              ),
              Container(
                height: 72,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(color: Colors.transparent, spreadRadius: 3),
                  ],
                ),
                child: Row(children: [
                  Text("體指率",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Color.fromRGBO(85, 85, 85, 1),
                      )),
                  SizedBox(
                    height: 0,
                    width: 170,
                  ),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Fat()),
                      );
                    },
                    icon: Icon(Icons.chevron_right),
                  ),
                ]),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
