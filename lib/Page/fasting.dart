import 'package:flutter/material.dart';
import '../helpers/Constants.dart';
import 'startmonster.dart';
import 'package:project/Page/finishmonster.dart';
import 'chooseplan.dart';
import 'window.dart';
import '../helpers/Constants.dart';

class fasting extends StatelessWidget {
  fasting createState() => fasting();
  int a=0;
  int b=0;
  fasting({Key? key, this.a=0, this.b=0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(0, 163, 165, 1),
            centerTitle: true,
            title: Text('斷食計畫'),
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
                            fontSize: 28, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(255, 255, 255, 1),
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
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text('已過時間',
                            style: TextStyle(
                                fontSize: 18,
                                color: Color.fromRGBO(85, 85, 85, 1))),
                      ],
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text("00:01:30",
                            style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 163, 165, 1))),
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
                    if(hour+a>23)
                      Text('明天,'+((hour+a)%24).toString()+finish.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(127, 127, 127, 1))),
                    if(hour+a<=23)
                      Text('今天,'+((hour+a)%24).toString()+finish.toString(),
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(127, 127, 127, 1))),
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Color.fromRGBO(18, 213, 214, 0.25),
                  boxShadow: [
                    BoxShadow(color: Colors.transparent, spreadRadius: 3),
                  ],
                ),
                height: 190,
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
                    Text(' 1.飲水以保持水分',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                    SizedBox(
                      height: 16,
                    ),
                    Text('  2.避免高強度運動',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                    SizedBox(
                      height: 16,
                    ),
                    Text('  3.將注意力放在食物以外的地方',
                        style: TextStyle(
                            fontSize: 16,
                            color: Color.fromRGBO(127, 127, 127, 1))),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Container(
                child: OutlinedButton(
                    child: Text(
                      '結束斷食',
                      style: TextStyle(color: Color.fromRGBO(255, 59, 59, 1)),
                    ),
                    style: TextButton.styleFrom(
                      side: BorderSide(width: 2, color: Colors.red),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => startmonster()));
                    }),
              ),
            ],
          )),
    );
  }
}
