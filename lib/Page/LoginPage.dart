import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/Page/Database.dart';
import 'package:project/Page/HealthPage.dart';
import 'package:project/Widgets/google_sign_in_button.dart';
import 'Home.dart';
import 'authentication.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: 208.94,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 90),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 88),
            child: Text(
              'The Secret of Better Health',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  color: Color.fromRGBO(0, 163, 165, 1)),
            ),
          ),
          SizedBox(
            height: 110,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GoogleSignInButton(),
          ),
          //   FutureBuilder(
          //   future: Authentication.initializeFirebase(context: context),
          //   builder: (context, snapshot) {
          //     if (snapshot.hasError) {
          //       return Text('Error initializing Firebase');
          //     } else if (snapshot.connectionState == ConnectionState.done) {
          //       return GoogleSignInButton();
          //     }
          //     return CircularProgressIndicator(
          //       valueColor: AlwaysStoppedAnimation<Color>(
          //         Colors.orange,
          //       ),
          //     );
          //   },
          // ),
          // Container(
          //     decoration: new BoxDecoration(
          //       color: Color.fromRGBO(18, 213, 214, 1),
          //       borderRadius: BorderRadius.all(Radius.circular(8.0)),),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     crossAxisAlignment: CrossAxisAlignment.center,
          //       children: <Widget>[
          //         SizedBox(width: 16,),
          //         Container(
          //           constraints: BoxConstraints(maxWidth: 24, maxHeight: 24),
          //         child: Image.asset('assets/images/google.png',),),
          //         SizedBox(width: 97,),
          //         Text("登入",style: TextStyle(
          //             fontSize: 18,fontWeight: FontWeight.w700,
          //             color: Colors.white
          //         ),),
          // ],),),
        ],
      ),
    );
  }
}

class NewLogin extends StatelessWidget {
  const NewLogin({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // IconButton(
              //     icon: Icon(Icons.arrow_back),
              //     onPressed: () {
              //       Navigator.of(context).pop();
              //     }),
              Text(
                '歡迎!',
                style: TextStyle(
                  color: Color.fromRGBO(18, 213, 214, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              // SizedBox(
              //   width: 40,
              // ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('我們需要向您詢問幾個簡單的問題，讓我們能夠計算出建議的每日熱量並協助您達成目標。',
                style: TextStyle(
                  color: Color.fromRGBO(18, 213, 214, 1),
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                )),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Gender(user: _user)));
            },
            icon: Image.asset('assets/images/next.png'),
            iconSize: 40,
          ),
          // SizedBox(),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('已有帳戶?'),
          //     TextButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => GoogleSignInButton()));
          //       },
          //       child: Text('登入',
          //           style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}

class Gender extends StatefulWidget {
  const Gender({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _Gender createState() => _Gender(user: _user);
}

class _Gender extends State<Gender> {
  bool _male = false;
  bool _female = false;

  // const
  _Gender({Key? key, required User user}) : _user = user;

  // super(key: key);

  final User _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Text(
                '選擇性別',
                style: TextStyle(
                  color: Color.fromRGBO(18, 213, 214, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CheckboxListTile(
                value: _male,
                onChanged: (male) {
                  setState(() {
                    _male = true;
                    _female = false;
                  });
                },
                title: Text("男性"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
              CheckboxListTile(
                value: _female,
                onChanged: (female) {
                  setState(() {
                    _male = false;
                    _female = true;
                  });
                },
                title: Text("女性"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
              // Container(
              //   color: Color.fromRGBO(18, 213, 214, 1),
              //   alignment: Alignment.topCenter,
              //   child: Text('男性'),
              //   constraints: BoxConstraints(
              //       maxWidth: 100, maxHeight: 100),
              // ),
              // Container(
              //   color: Color.fromRGBO(18, 213, 214, 1),
              //   alignment: Alignment.topCenter,
              //   child: Text('女性'),
              //   constraints: BoxConstraints(
              //       maxWidth: 100, maxHeight: 100),
            ],
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Old(
                            user: _user,
                            sex: _male ? "male" : "female",
                          )));
            },
            icon: Image.asset('assets/images/next.png'),
            iconSize: 40,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('已有帳戶?'),
          //     TextButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => GoogleSignInButton()));
          //       },
          //       child: Text('登入',
          //           style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}

class Old extends StatefulWidget {
  const Old({
    Key? key,
    required User user,
    required String sex,
  })
      : _user = user,
        _sex = sex,
        super(key: key);

  final User _user;
  final String _sex;

  @override
  _OldState createState() => _OldState(user: _user, sex: _sex);
}

class _OldState extends State<Old> {
  _OldState({Key? key, required User user, required String sex})
      : _user = user, _sex = sex;

  final User _user;
  final String _sex;
  int _born = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Text(
                '您的出生年',
                style: TextStyle(
                  color: Color.fromRGBO(18, 213, 214, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: TextField(
              //controller: _pinCodeController,
              keyboardType: TextInputType.number,
              maxLength: 4,
              maxLines: 1,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixText: "年(西元)",
              ),
              onChanged: (String text) {
                setState(() {
                  _born = int.parse(text);
                });
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => height(
                            user: _user,
                            sex: _sex,
                            born: _born,
                          )));
            },
            icon: Image.asset('assets/images/next.png'),
            iconSize: 40,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('已有帳戶?'),
          //     TextButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => GoogleSignInButton()));
          //       },
          //       child: Text('登入',
          //           style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}

class height extends StatefulWidget {
  const height({
    Key? key,
    required User user,
    required String sex,
    required int born,
  })  : _user = user,
        _sex = sex,
        _born = born,
        super(key: key);

  final User _user;
  final String _sex;
  final int _born;

  @override
  _HeightState createState() => _HeightState(user: _user, sex: _sex, born: _born);
}

class _HeightState extends State<height> {
  _HeightState({Key? key, required User user, required String sex, required int born})
      : _user = user, _sex = sex, _born = born;

  final User _user;
  final String _sex;
  final int _born;
  double _height = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Text(
                '您的身高',
                style: TextStyle(
                  color: Color.fromRGBO(18, 213, 214, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: TextField(
              //controller: _pinCodeController,
              keyboardType: TextInputType.number,
              maxLength: 3,
              maxLines: 1,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixText: "cm",
              ),
              onChanged: (String text) {
                setState(() {
                  _height = double.parse(text);
                });
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Weight(
                            user: _user,
                            sex: _sex,
                            born: _born,
                            height: _height,
                          )));
            },
            icon: Image.asset('assets/images/next.png'),
            iconSize: 40,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('已有帳戶?'),
          //     TextButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => GoogleSignInButton()));
          //       },
          //       child: Text('登入',
          //           style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}

class Weight extends StatefulWidget {
  const Weight({
    Key? key,
    required User user,
    required String sex,
    required int born,
    required double height,
  })  : _user = user,
        _sex = sex,
        _born = born,
        _height = height,
        super(key: key);

  final User _user;
  final String _sex;
  final int _born;
  final double _height;

  @override
  _WeightState createState() =>
      _WeightState(user: _user, sex: _sex, born: _born, height: _height);
}

class _WeightState extends State<Weight> {
  _WeightState(
      {Key? key,
      required User user,
      required String sex,
      required int born,
      required double height})
      : _user = user,
        _sex = sex,
        _born = born,
        _height = height;

  final User _user;
  final String _sex;
  final int _born;
  final double _height;
  double _weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Text(
                '您的體重',
                style: TextStyle(
                  color: Color.fromRGBO(18, 213, 214, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 60, right: 60),
            child: TextField(
              //controller: _pinCodeController,
              keyboardType: TextInputType.number,
              maxLength: 3,
              maxLines: 1,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixText: "kg",
              ),
              onChanged: (text) {
                setState(() {
                  _weight = double.parse(text);
                });
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ExerciseFrequency(
                            user: _user,
                            sex: _sex,
                            born: _born,
                            height: _height,
                            weight: _weight,
                          )));
            },
            icon: Image.asset('assets/images/next.png'),
            iconSize: 40,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('已有帳戶?'),
          //     TextButton(
          //       onPressed: () {
          //         Navigator.push(
          //             context,
          //             MaterialPageRoute(
          //                 builder: (context) => GoogleSignInButton()));
          //       },
          //       child: Text('登入',
          //           style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}

class ExerciseFrequency extends StatefulWidget {
  const ExerciseFrequency(
      {Key? key,
      required User user,
      required String sex,
      required int born,
      required double height,
      required double weight})
      : _user = user,
        _sex = sex,
        _born = born,
        _height = height,
        _weight = weight,
        super(key: key);

  final User _user;
  final String _sex;
  final int _born;
  final double _height;
  final double _weight;

  @override
  _ExerciseFrequencyState createState() => _ExerciseFrequencyState(
      user: _user, sex: _sex, born: _born, height: _height, weight: _weight);
}

class _ExerciseFrequencyState extends State<ExerciseFrequency> {
  bool _checkboxListChecked = false;
  bool _checkboxList2Checked = false;
  bool _checkboxList3Checked = false;
  bool _checkboxList4Checked = false;
  bool _checkboxList5Checked = false;

  User _user;
  String _sex;
  int _born;
  double _weight;
  double _height;

  // const
  _ExerciseFrequencyState(
      {Key? key,
      required User user,
      required String sex,
      required int born,
      required double height,
      required double weight})
      : _user = user,
        _sex = sex,
        _born = born,
        _height = height,
        _weight = weight;

  // super(key: key);

  // final User _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Text(
                '您的運動頻率',
                style: TextStyle(
                  color: Color.fromRGBO(18, 213, 214, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CheckboxListTile(
                value: _checkboxListChecked,
                onChanged: (checkboxListChecked) {
                  setState(() {
                    _checkboxListChecked = true;
                    _checkboxList2Checked = false;
                    _checkboxList3Checked = false;
                    _checkboxList4Checked = false;
                    _checkboxList5Checked = false;
                  });
                },
                title: Text("久坐"),
                subtitle: Text("沒啥運動><"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
              CheckboxListTile(
                value: _checkboxList2Checked,
                onChanged: (checkboxList2Checked) {
                  setState(() {
                    _checkboxListChecked = false;
                    _checkboxList2Checked = true;
                    _checkboxList3Checked = false;
                    _checkboxList4Checked = false;
                    _checkboxList5Checked = false;
                  });
                },
                title: Text("輕量活動"),
                subtitle: Text("每周運動1~3天"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
              CheckboxListTile(
                value: _checkboxList3Checked,
                onChanged: (checkboxList3Checked) {
                  setState(() {
                    _checkboxListChecked = false;
                    _checkboxList2Checked = false;
                    _checkboxList3Checked = true;
                    _checkboxList4Checked = false;
                    _checkboxList5Checked = false;
                  });
                },
                title: Text("中度活動量"),
                subtitle: Text("每周運動3~5天"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
              CheckboxListTile(
                value: _checkboxList4Checked,
                onChanged: (checkboxList4Checked) {
                  setState(() {
                    _checkboxListChecked = false;
                    _checkboxList2Checked = false;
                    _checkboxList3Checked = false;
                    _checkboxList4Checked = true;
                    _checkboxList5Checked = false;
                  });
                },
                title: Text("高度活動量"),
                subtitle: Text("每周運動6~7天"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
              CheckboxListTile(
                value: _checkboxList5Checked,
                onChanged: (checkboxList5Checked) {
                  setState(() {
                    _checkboxListChecked = false;
                    _checkboxList2Checked = false;
                    _checkboxList3Checked = false;
                    _checkboxList4Checked = false;
                    _checkboxList5Checked = true;
                  });
                },
                title: Text("非常高度活動量"),
                subtitle: Text("無時無刻都在運動XD"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
              double _freq = 0;
              if (_checkboxListChecked) {
                _freq = 1.2;
              } else if (_checkboxList2Checked) {
                _freq = 1.375;
              } else if (_checkboxList3Checked) {
                _freq = 1.55;
              } else if (_checkboxList4Checked) {
                _freq = 1.725;
              } else if (_checkboxList5Checked) {
                _freq = 1.9;
              }
              Database().newUser(_sex, _born, _height, _weight, _freq, _user.uid);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Success(user: _user)
                  )
              );
            },
            icon: Image.asset('assets/images/next.png'),
            iconSize: 40,
          ),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: <Widget>[
          //     Text('已有帳戶?'),
          //     TextButton(
          //       onPressed: (){
          //         Navigator.push(context, MaterialPageRoute(builder:
          //             (context) => GoogleSignInButton()));},
          //       child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
          //     )
          //   ],
          // ),
        ],
      ),
    );
  }
}

// Future<void> _showAlertDialog(BuildContext context) {
//
//   return showDialog<void>(
//     context: context,
//     builder: (BuildContext context) {
//       return AlertDialog(
//         content: Container(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Text("註冊成功",
//                   style: TextStyle(
//                     fontSize: 20,
//                     fontWeight: FontWeight.w700,
//                   )),
//               Image(
//                 image: AssetImage('assets/images/success.png'),
//               ),
//               Text("感謝您的註冊",
//                   style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w500,
//                   )),
//             ],
//           ),
//         ),
//         actions: <Widget>[
//           Padding(
//             padding: EdgeInsets.fromLTRB(0, 0, 10, 40),
//             child: IconButton(
//               onPressed: (){
//                 var _user;
//                 Navigator.push(context, MaterialPageRoute(builder:
//                    (context) => Home(user: _user)));},
//               icon: Image.asset('assets/images/nextpage.png'),
//               iconSize: 40,
//             ),
//           ),
//           // RaisedButton(
//           //   child: Text('確認'),
//           //   onPressed: (){
//           //     Navigator.push(context, MaterialPageRoute(builder:
//           //         (context) => HealthPage(user: user,)));
//           //   },
//           //   color: Color.fromRGBO(18, 213, 214, 1),
//           // ),
//         ],
//       );
//     },
//   );
// }

class Success extends StatelessWidget {
  const Success({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              Text(
                '註冊成功',
                style: TextStyle(
                  color: Color.fromRGBO(18, 213, 214, 1),
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(
                width: 40,
              ),
            ],
          ),
          Image(
            image: AssetImage('assets/images/success.png'),
          ),
          Text(
            "感謝您的註冊\n"
            "確認資料無誤後\n請點擊下方按鈕進入",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color.fromRGBO(18, 213, 214, 1),
              fontSize: 24,
              fontWeight: FontWeight.w700,
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Home(user: _user)));
            },
            icon: Image.asset('assets/images/next.png'),
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}
