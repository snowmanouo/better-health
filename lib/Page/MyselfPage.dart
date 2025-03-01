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
  String time = '?';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("個人數據"),
        backgroundColor: Color.fromRGBO(0, 163, 165, 1),
      ),
      body: Stack(children: [
        Image.asset('assets/images/selfpageBackground.png'),
        ListView(
          padding: EdgeInsets.symmetric(vertical: 116, horizontal: 16),
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
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Calorie()),
                        );
                      },
                      icon: Image.asset('assets/images/personal_arrow.png'),
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
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Time()),
                        );
                      },
                      icon: Image.asset('assets/images/personal_arrow.png'),
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
                    SizedBox(width: 7),
                    IconButton(
                        padding: EdgeInsets.zero,
                        constraints: BoxConstraints(),
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

                              TextButton(
                                onPressed: () => Navigator.pop(context, 'OK'),
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
                        icon: Image.asset('assets/images/myselfsetting.png')),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Kg()),
                        );
                      },
                      icon: Image.asset('assets/images/personal_arrow.png'),
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
                    Text("體脂率",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color.fromRGBO(85, 85, 85, 1),
                        )),
                    Spacer(),
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Fat()),
                        );
                      },
                      icon: Image.asset('assets/images/personal_arrow.png'),
                    ),
                  ]),
                ),
              ],
            ),
          ],
        ),
      ],)

    );
  }
}
