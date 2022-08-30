import 'dart:developer';

import 'package:flutter/material.dart';
import 'fasting.dart';
import '14_10plan.dart';

class finishmonster extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color.fromRGBO(0, 163, 165, 1),
            leading: Image.asset('assets/images/gear.png'),
            centerTitle: true,
            title: Text('願你暴瘦'),
          ),
          body: ListView(
            padding: const EdgeInsets.all(20),
            children: <Widget>[
              // Column(
              //   children: [
              // Column(
              //   children:[
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
              // ],
              // ),
              Container(
                height: 200,
                width: 72, //沒用
                color: Color.fromRGBO(18, 213, 214, 0.25),
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
                    Text('已過時間00:01:30',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(height:16,),
                    Text('00:01:30',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(0, 163, 165, 1))),
                    SizedBox(height:16,),
                    Container(
                      child: ElevatedButton(
                          child: Text(
                            '您的斷食將於 明天05:00結束',
                            style: TextStyle(color: Color.fromRGBO(85, 85, 85,1),),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color.fromRGBO(226, 226, 226, 1),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => fasting()));
                          }),
                    )
                  ],
                ),
              ),

              //   ],
              // ),
            ],
          )),
    );
  }
}
