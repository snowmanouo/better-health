import 'package:flutter/material.dart';
import 'finishmonster.dart';

class Bplan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor:Color.fromRGBO(0, 163, 165, 1),
            centerTitle: true,
            title: Text('16-8斷食計畫'),
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
                    Text('16-8',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Container(
                height: 96,
                width: 72, //沒用
                color: Color.fromRGBO(0, 0, 0, 0.06),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('斷食16小時',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text('進食8小時',
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
                    Text('明天,6:00',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              //   ],
              // ),
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
                          builder: (context) => finishmonster()));
                }),
          ),
              Container(
                height: 240,
                width: 72,//沒用
                color: Color.fromRGBO(18, 213, 214, 0.25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Text('斷食準備',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold)),
                    Text('1.攝取充分蛋白質,例如肉類、魚類、豆腐及乾果',
                        style: TextStyle(
                            fontSize: 18)),
                    Text('2.攝取高纖維食物,例如乾果、豆類、水果及蔬菜',
                        style: TextStyle(
                            fontSize: 18)),
                    Text('3.補充足水分,攝取天然食物,以幫助您控制進食時的胃口',
                        style: TextStyle(
                            fontSize: 18)),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
