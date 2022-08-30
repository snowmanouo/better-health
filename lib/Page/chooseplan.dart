import 'package:flutter/material.dart';
import 'package:project/Page/16_8plan.dart';
import 'package:project/Page/18_6plan.dart';
import 'package:project/Page/20_4plan.dart';
import '14_10plan.dart';

class chooseplan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(0, 163, 165, 1),
          centerTitle: true,
          title: Text('選擇一項計畫'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Aplan()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color.fromRGBO(253, 237, 114, 0.3),
                    boxShadow: [
                      BoxShadow(color: Colors.transparent, spreadRadius: 3),
                    ],
                  ),
                  height: 200,
                  width: 72, //沒用
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('14-10',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      SizedBox(height: 12),
                      Row(children: [
                        Image.asset('assets/images/yellowbolt.png'),
                        Image.asset('assets/images/airyellowbolt.png'),
                        Image.asset('assets/images/airyellowbolt.png'),
                        Image.asset('assets/images/airyellowbolt.png'),
                      ]),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Icon(
                            Icons.hdr_strong_outlined,
                          ),
                          SizedBox(width: 20),
                          Text('斷食14小時',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(width: 140),
                          Image.asset('assets/images/chicken.png'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.hdr_strong_outlined,
                          ),
                          SizedBox(width: 20),
                          Text('進食10小時',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                )),
            SizedBox(height: 16),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bplan()));
                },
                child: Container(
                  height: 200,
                  width: 72, //沒用
                  color: Color.fromRGBO(5, 138, 224, 0.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('16-8',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      SizedBox(height: 12),
                      Row(children: [
                        Image.asset('assets/images/bluebolt.png'),
                        Image.asset('assets/images/airbluebolt.png'),
                        Image.asset('assets/images/airbluebolt.png'),
                        Image.asset('assets/images/airbluebolt.png'),
                      ]),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Icon(
                            Icons.hdr_strong_outlined,
                          ),
                          SizedBox(width: 20),
                          Text('斷食16小時',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(width: 140),
                          Image.asset('assets/images/banana.png'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.hdr_strong_outlined,
                          ),
                          SizedBox(width: 20),
                          Text('進食8小時',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                )),
            SizedBox(height: 16),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Cplan()));
                },
                child: Container(
                  height: 200,
                  width: 72, //沒用
                  color: Color.fromRGBO(255, 59, 59, 0.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('18-6',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      SizedBox(height: 12),
                      Row(children: [
                        Image.asset('assets/images/redbolt.png'),
                        Image.asset('assets/images/redbolt.png'),
                        Image.asset('assets/images/airredbolt.png'),
                        Image.asset('assets/images/airredbolt.png'),
                      ]),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Icon(
                            Icons.hdr_strong_outlined,
                          ),
                          SizedBox(width: 20),
                          Text('斷食18小時',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(width: 140),
                          Image.asset('assets/images/drink.png'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.hdr_strong_outlined,
                          ),
                          SizedBox(width: 20),
                          Text('進食6小時',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                )),
            SizedBox(height: 16),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Dplan()));
                },
                child: Container(
                  height: 200,
                  width: 72, //沒用
                  color: Color.fromRGBO(6, 194, 112, 0.3),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('20-4',
                          style: TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold)),
                      SizedBox(height: 12),
                      Row(children: [
                        Image.asset('assets/images/greenbolt.png'),
                        Image.asset('assets/images/greenbolt.png'),
                        Image.asset('assets/images/airgreenbolt.png'),
                        Image.asset('assets/images/airgreenbolt.png'),
                      ]),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Icon(
                            Icons.hdr_strong_outlined,
                          ),
                          SizedBox(width: 20),
                          Text('斷食20小時',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                          SizedBox(width: 140),
                          Image.asset('assets/images/redapple.png'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.hdr_strong_outlined,
                          ),
                          SizedBox(width: 20),
                          Text('進食4小時',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold)),
                        ],
                      )
                    ],
                  ),
                )),
            // Container(
            //   height: 150,
            //   color: Color.fromRGBO(0, 0, 0, 0.06),
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     crossAxisAlignment: CrossAxisAlignment.center,
            //     children: <Widget>[
            //       Text('客製化',
            //           style:
            //               TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            //       Text('打造您個人斷食計畫', style: TextStyle(fontSize: 24)),
            //       ElevatedButton(
            //           child: Text('選擇此計畫'),
            //           onPressed: () {
            //             Navigator.push(context,
            //                 MaterialPageRoute(builder: (context) => Dplan()));
            //           }),
            //     ],
            //   ),
            // )
          ],
        ),

      );
  }
}


