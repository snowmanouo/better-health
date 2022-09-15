import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/Page/fasting.dart';
import 'chooseplan.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../helpers/Constants.dart';
import 'dart:async';


class finishmonster extends StatelessWidget {
  int a=0;
  int b=0;
  finishmonster({Key? key, this.a=0, this.b=0}) : super(key: key);
  // void _startcountdown(){
  //     Timer.periodic(Duration(seconds: 1), (timer) {
  //       setState((){
  //           lefttime--;
  //       });
  //     });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 163, 165, 1),
          centerTitle: true,
          title: Text('願你暴瘦'),
        ),
        body: ListView(
          children: <Widget>[
            Stack(children: <Widget>[
              Container(
                height: 176,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/back1.png"),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Column(
                children: [
                  SizedBox(
                    height: 102.5,
                  ),
                  if(Level<=10)
                    new ClipOval(
                      child: new Image.asset(
                        'assets/images/monster1.png',
                        height: 160,
                      ),
                    ),
                  if(Level>=11&&Level<=20)
                    new ClipOval(
                      child: new Image.asset(
                        'assets/images/monster2.png',
                        height: 160,
                      ),
                    ),
                  if(Level>20)
                    new ClipOval(
                      child: new Image.asset(
                        'assets/images/monster3.png',
                        height: 160,
                      ),
                    ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('單眼小怪獸',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      SizedBox(width: 8),
                      Image.asset('assets/images/pencil.png'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('LV'+Level.toString(),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      LinearPercentIndicator(
                        width: 140.0,
                        lineHeight: 20.0,
                        percent: LvPercent,//變數
                        center: Text(
                          bar.toString()+"%",
                          style: new TextStyle(fontSize: 12.0),
                        ),
                        // trailing: Icon(Icons.mood),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Color.fromRGBO(226, 226, 226, 1),
                        progressColor: Color.fromRGBO(18, 213, 214, 1),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(color: Colors.transparent, spreadRadius: 3),
                        ],
                      ),
                      height: 230,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Row(children: <Widget>[
                            SizedBox(height: 30),
                            Image.asset('assets/images/fork.png'),
                            SizedBox(width: 9),
                            Text('斷食',
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ]),
                          SizedBox(height: 25),
                          Text('已過時間',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(127, 127, 127, 1))),
                          SizedBox(height: 16),
                          Text('00:01:30',
                              style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(0, 163, 165, 1))),
                          SizedBox(height: 16),
                          SizedBox(
                            height: 52,
                            width: 296,
                            child: ElevatedButton(
                                child: Text(
                                  '您的斷食將結束於'+"  "+((hour+a)%24).toString()+finish.toString(),
                                  style: TextStyle(color: Color.fromRGBO(85, 85, 85, 1)),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                  Color.fromRGBO(226, 226, 226, 1),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => fasting(a:14,b:10)));
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ],
        ));
  }
}

