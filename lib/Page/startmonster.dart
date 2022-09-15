import 'package:flutter/material.dart';
import 'package:project/Page/fasting.dart';
import 'package:project/Page/finishmonster.dart';
import 'chooseplan.dart';
import 'fasting.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../helpers/Constants.dart';

class startmonster extends StatelessWidget {
  String _ads = '';
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
                  if (Level <= 10)
                    new ClipOval(
                      child: new Image.asset(
                        'assets/images/monster1.png',
                        height: 160,
                      ),
                    ),
                  if (Level >= 11 && Level <= 20)
                    new ClipOval(
                      child: new Image.asset(
                        'assets/images/monster2.png',
                        height: 160,
                      ),
                    ),
                  if (Level > 20)
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
                      SizedBox(width: 4),
                      IconButton(
                        onPressed: (){
                        },
                        icon: Image.asset('assets/images/pencil.png'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('LV' + Level.toString(),
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      LinearPercentIndicator(
                        width: 140.0,
                        lineHeight: 20.0,
                        percent: LvPercent,
                        //變數
                        center: Text(
                          bar.toString() + "%",
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                            Row(children: <Widget>[
                              SizedBox(height: 30),
                              Image.asset('assets/images/fork.png'),
                              SizedBox(width: 9),
                              Text('進食時間',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
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
                          SizedBox(height: 16),
                          SizedBox(
                            height: 52,
                            width: 296,
                            child: ElevatedButton(
                                child: Text(
                                  '立即開始',
                                  style: TextStyle(color: Colors.white),
                                ),
                                style: TextButton.styleFrom(
                                  backgroundColor:
                                      Color.fromRGBO(18, 213, 214, 1),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => chooseplan()));
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // Container(
              //   height: 356,
              //   alignment: Alignment.center,
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: <Widget>[
              //       SizedBox(
              //         height: 128,
              //       ),
              //       new ClipOval(
              //         child: new Image.asset(
              //           'assets/images/guishoa.png',
              //           height: 160,
              //         ),
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Text('單眼小怪獸',
              //               style: TextStyle(
              //                   fontSize: 16, fontWeight: FontWeight.bold)),
              //           SizedBox(width: 8),
              //           Image.asset('assets/images/pencil.png'),
              //         ],
              //       ),
              //       Row(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         crossAxisAlignment: CrossAxisAlignment.center,
              //         children: [
              //           Text('LV2',
              //               style: TextStyle(
              //                   fontSize: 16, fontWeight: FontWeight.bold)),
              //           Padding(
              //             padding: EdgeInsets.all(15.0),
              //             child: new LinearPercentIndicator(
              //               width: 140.0,
              //               lineHeight: 14.0,
              //               percent: 0.5,
              //               center: Text(
              //                 "50.0%",
              //                 style: new TextStyle(fontSize: 12.0),
              //               ),
              //               // trailing: Icon(Icons.mood),
              //               linearStrokeCap: LinearStrokeCap.roundAll,
              //               backgroundColor: Color.fromRGBO(226, 226, 226, 1),
              //               progressColor: Color.fromRGBO(18, 213, 214, 1),
              //             ),
              //           ),
              //         ],
              //       )
              //     ],
              //   ),
              // ),
            ]),
            // Padding(
            //   padding: const EdgeInsets.all(16),
            //   child: Container(
            //     padding: const EdgeInsets.all(16),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(8),
            //       color: Colors.white,
            //       boxShadow: [
            //         BoxShadow(color: Colors.transparent, spreadRadius: 3),
            //       ],
            //     ),
            //     height: 230,
            //     width: 72,
            //     //沒用
            //     child: Column(
            //       mainAxisAlignment: MainAxisAlignment.start,
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: <Widget>[
            //         Row(children: <Widget>[
            //           SizedBox(height: 30),
            //           Image.asset('assets/images/fork.png'),
            //           SizedBox(width: 9),
            //           Text('進食時間',
            //               style: TextStyle(
            //                   fontSize: 18, fontWeight: FontWeight.bold)),
            //         ]),
            //         SizedBox(height: 25),
            //         Row(
            //           children: <Widget>[
            //             Image.asset('assets/images/startfasting.png'),
            //             SizedBox(width: 10),
            //             Text('開始你的斷食',
            //                 style: TextStyle(
            //                     fontSize: 18,
            //                     fontWeight: FontWeight.bold,
            //                     color: Color.fromRGBO(0, 163, 165, 1))),
            //           ],
            //         ),
            //         SizedBox(height: 16),
            //         SizedBox(
            //           height: 52,
            //           width: 350,
            //           child: ElevatedButton(
            //               child: Text(
            //                 '立即開始',
            //                 style: TextStyle(color: Colors.white),
            //               ),
            //               style: TextButton.styleFrom(
            //                 backgroundColor: Color.fromRGBO(18, 213, 214, 1),
            //               ),
            //               onPressed: () {
            //                 Navigator.push(
            //                     context,
            //                     MaterialPageRoute(
            //                         builder: (context) => chooseplan()));
            //               }),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(8),
            //     color: Colors.white,
            //     boxShadow: [
            //       BoxShadow(color: Colors.transparent, spreadRadius: 3),
            //     ],
            //   ),
            //   height: 230,
            //   width: 72,
            //   //沒用
            //   child: Column(
            //     mainAxisAlignment: MainAxisAlignment.start,
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: <Widget>[
            //       Row(children: <Widget>[
            //         SizedBox(height: 30),
            //         Image.asset('assets/images/fork.png'),
            //         SizedBox(width: 9),
            //         Text('進食時間',
            //             style: TextStyle(
            //                 fontSize: 18, fontWeight: FontWeight.bold)),
            //       ]),
            //       SizedBox(height: 25),
            //       Row(
            //         children: <Widget>[
            //           Image.asset('assets/images/startfasting.png'),
            //           SizedBox(width: 10),
            //           Text('開始你的斷食',
            //               style: TextStyle(
            //                   fontSize: 18,
            //                   fontWeight: FontWeight.bold,
            //                   color: Color.fromRGBO(0, 163, 165, 1))),
            //         ],
            //       ),
            //       SizedBox(height: 16),
            //       SizedBox(
            //         height: 52,
            //         width: 350,
            //         child: ElevatedButton(
            //             child: Text(
            //               '立即開始',
            //               style: TextStyle(color: Colors.white),
            //             ),
            //             style: TextButton.styleFrom(
            //               backgroundColor: Color.fromRGBO(18, 213, 214, 1),
            //             ),
            //             onPressed: () {
            //               Navigator.push(
            //                   context,
            //                   MaterialPageRoute(
            //                       builder: (context) => chooseplan()));
            //             }),
            //       ),
            //     ],
            //   ),
            // ),
            // Container(
            //   child: ElevatedButton(
            //       child: Text(
            //         '立即開始',
            //         style: TextStyle(color: Colors.white),
            //       ),
            //       style: TextButton.styleFrom(
            //         backgroundColor: Color.fromRGBO(18, 213, 214, 1),
            //       ),
            //       onPressed: () {
            //         Navigator.push(context,
            //             MaterialPageRoute(builder: (context) => chooseplan()));
            //       }),
            // )

            //   ],
            // ),
          ],
        ));
  }
}
