import 'package:flutter/material.dart';
import 'finishmonster.dart';
import 'package:project/Page/startmonster.dart';
import '../helpers/Constants.dart';
import  'package:intl/intl.dart';

class Aplan extends StatelessWidget {
  // var today = DateTime.now();
  // var fiftyDaysFromNow = today.add(new Duration(days: 5));
    String begin = DateFormat("HH:mm").format(DateTime.now());
    String finish = DateFormat("HH:mm").format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(0, 163, 165, 1),
            centerTitle: true,
            title: Text('14-10斷食計畫'),
          ),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              // Column(
              //   children: [
              Container(
                height: 60,
                width: 72, //沒用
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('14-10',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(238, 238, 238, 1),
                  boxShadow: [
                    BoxShadow(color: Colors.transparent, spreadRadius: 3),
                  ],
                ),
                height: 96,
                width: 72, //沒用
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Image.asset('assets/images/bluecircle.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('斷食14小時',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(127, 127, 127, 1))),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        Image.asset('assets/images/yellowcircle.png'),
                        SizedBox(
                          width: 10,
                        ),
                        Text('進食10小時',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromRGBO(127, 127, 127, 1))),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                width: 72, //沒用
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                    ),
                    Image.asset('assets/images/begin.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('開始',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                    SizedBox(width: 135),
                    Text('今天,'+begin,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                  ],
                ),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                width: 72, //沒用
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      width: 25,
                    ),
                    Image.asset('assets/images/finish.png'),
                    SizedBox(
                      width: 10,
                    ),
                    Text('結束(預計)',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                    SizedBox(width: 86),
                    Text('明天,'+finish.toString(),
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                  ],
                ),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                child: ElevatedButton(
                    child: Text(
                      '開始斷食',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(18, 213, 214, 1),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => startmonster()));
                    }),
              ),
              SizedBox(
                height: 28,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(18, 213, 214, 0.25),
                  boxShadow: [
                    BoxShadow(color: Colors.transparent, spreadRadius: 3),
                  ],
                ),
                height: 240,
                width: 72, //沒用
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Row(
                      children: [
                        SizedBox(
                          width: 100,
                        ),
                        Image.asset('assets/images/bulb.png'),
                        SizedBox(
                          width: 8,
                        ),
                        Text('斷食準備',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(127, 127, 127, 1))),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Text('  1.攝取充分蛋白質,例如肉類、魚類、豆腐及乾果',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                    SizedBox(
                      height: 16,
                    ),
                    Text('  2.攝取高纖維食物,例如乾果、豆類、水果及蔬菜',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                    SizedBox(
                      height: 16,
                    ),
                    Text('  3.補充足水分,攝取天然食物,以幫助您控制進食時的胃口',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
