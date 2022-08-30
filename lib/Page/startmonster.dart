import 'dart:developer';

import 'package:flutter/material.dart';
import 'chooseplan.dart';
import '14_10plan.dart';

class startmonster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(0, 163, 165, 1),
            centerTitle: true,
            title: Text('願你暴瘦'),
          ),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/back1.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                // child: Center(
                //   child: Text(
                //     '單眼小怪獸',
                //     style: TextStyle(fontSize: 22.0, color: Colors.black,fontWeight: FontWeight.bold),
                //   ),
                // ),
              ),
              Container(
                height: 192,
                width: 72, //沒用
                // color: Color.fromRGBO(253, 237, 114, 0.3),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('單眼小怪獸',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text('LV', style: TextStyle(fontSize: 24)),
                    new ClipOval(
                      child: new Image.asset(
                        'assets/images/guishoa.png',
                        height: 120,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 150,
                width: 72, //沒用
                color: Colors.white,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(children: <Widget>[
                      SizedBox(height: 30),
                      Image.asset('assets/images/fork.png'),
                      SizedBox(width: 9),
                      Text('進食時間',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                    ]),
                    SizedBox(height: 25),
                    Row(
                      children: <Widget>[
                        Image.asset('assets/images/startfasting.png'),
                        SizedBox(width: 10),
                        Text('開始你的斷食',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(0, 163, 165, 1))),
                      ],
                    ),
                  ],
                ),
              ),
              // Row(
              //   children: [
              //     Text('aaa'),
              //   ],
              // )
              // Column(
              //   children: [
              //     ElevatedButton(
              //       child: Text('立即開始'),
              //       onPressed: () {
              //         Navigator.push(context,
              //             MaterialPageRoute(builder: (context) => Cpage()));
              //       },
              //     ),
              //   ],
              // ),
              Container(
                child: ElevatedButton(
                    child: Text(
                      '立即開始',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                      backgroundColor: Color.fromRGBO(18, 213, 214, 1),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => chooseplan()));
                    }),
              )

              //   ],
              // ),
            ],
          )),
    );
  }
}
