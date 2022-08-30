import 'package:flutter/material.dart';
import 'package:project/Page/startmonster.dart';
import 'window.dart';


class fasting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor:Color.fromRGBO(0, 163, 165, 1),
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
                    Text('您正在斷食!!!',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: 180,
                width: 72, //沒用
                color: Color.fromRGBO(0, 0, 0, 0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('已過時間',
                        style: TextStyle(
                            fontSize: 18,)),
                    Text('00:01:30',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text('結束時間',
                        style: TextStyle(
                            fontSize: 18, )),
                    Text('明天 05:00',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 72, //沒用
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('開始',
                        style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold,)),
                    SizedBox(width: 135),
                    Text('今天,14:00',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: 50,
                width: 72, //沒用
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('結束(預計)',
                        style: TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold,)),
                    SizedBox(width: 70),
                    Text('明天,4:00',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              //   ],
              // ),
              Container(
                height: 120,
                width: 72,//沒用
                color: Color.fromRGBO(18, 213, 214, 0.25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('斷食期間',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text('1.飲水以保持水分',
                        style: TextStyle(
                            fontSize: 18)),
                    Text('2.將注意力放在食物以外的地方',
                        style: TextStyle(
                            fontSize: 18)),
                    Text('3.避免高強度運動',
                        style: TextStyle(
                            fontSize: 18)),
                  ],
                ),
              ),
              Container(
                color: Color.fromRGBO(18, 213, 214, 0.25),
                child: ElevatedButton(
                    child: Text(
                      '結束斷食',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(255, 59, 59, 1),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => startmonster()));
                    }),
              )

            ],
          )),
    );
  }
}