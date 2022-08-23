import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/Page/HealthPage.dart';
import 'package:project/Widgets/google_sign_in_button.dart';


import 'authentication.dart';

class LoginPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 208.94,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 90),
            child: Image(
              image: AssetImage("assets/images/logo.png"),
            ),),
            SizedBox(height: 24,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 123),
              child:Text('願你暴瘦',style: TextStyle(
              fontSize: 28,fontWeight: FontWeight.w700,
                color: Color.fromRGBO(0, 163, 165, 1)),), ),
            SizedBox(height: 24,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 99),
              child:Text('Hope you can be more fit!',style: TextStyle(
              fontSize: 14,fontWeight: FontWeight.w500,
              color: Color.fromRGBO(153, 161, 186, 0.6)
            ),),),
            SizedBox(height: 30,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 50),child:
            OutlinedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color.fromRGBO(18, 213, 214, 1),),
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => NewLogin()));},
              child:Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
              Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child:Icon(Icons.account_circle,size: 40,),),
                  Padding(padding: EdgeInsets.fromLTRB(20, 10, 40, 10),
                    child:Text('我是新用戶',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,),
                    ),),
                ],
              ),
              ),),
            SizedBox(height: 20,),
            Padding(padding: EdgeInsets.symmetric(horizontal: 50),
              child: GoogleSignInButton(),),
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

class NewLogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }  ),
              Text('歡迎!',
                style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1)),
              ),
              SizedBox(),
            ],
          ),
          Text('我們需要向您詢問幾個簡單的問題，讓我們能夠計算出建議的每日熱量並協助您達成目標。',
              style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => Gender()));},
            icon: Icon(Icons.arrow_forward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => GoogleSignInButton()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class Gender extends StatefulWidget{
  @override
  _Gender createState() => _Gender();
}
class _Gender extends State<Gender> {
  bool _male =false;
  bool _female=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }  ),
              Text('選擇性別',
                style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1)),
              ),
              SizedBox(),
            ],
          ),
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CheckboxListTile(
            value: _male,
            onChanged: (male){
              setState((){
                _male=true;
                _female=false;
              });
            },
            title: Text("男性"),
            activeColor: Color.fromRGBO(18, 213, 214, 1),
          ),
          CheckboxListTile(
            value: _female,
            onChanged: (female){
              setState((){
                _male=false;
                _female=true;
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
    ],),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => Old()));},
            icon: Icon(Icons.arrow_forward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => GoogleSignInButton()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Old extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }  ),
              Text('您的年齡',
                style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1)),
              ),
              SizedBox(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60,right: 60),
            child:TextField(
              //controller: _pinCodeController,
              keyboardType: TextInputType.number,
              maxLength: 3,
              maxLines: 1,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixText: "歲",
              ),
            ),
          ),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => height()));},
            icon: Icon(Icons.arrow_forward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => GoogleSignInButton()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class height extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }  ),
              Text('您的身高',
                style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1)),
              ),
              SizedBox(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60,right: 60),
            child:TextField(
              //controller: _pinCodeController,
              keyboardType: TextInputType.number,
              maxLength: 3,
              maxLines: 1,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixText: "cm",
              ),
            ),
          ),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => NowWeight()));},
            icon: Icon(Icons.arrow_forward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => GoogleSignInButton()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class NowWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }  ),
              Text('您的當前體重',
                style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1)),
              ),
              SizedBox(),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(left: 60,right: 60),
            child:TextField(
              //controller: _pinCodeController,
              keyboardType: TextInputType.number,
              maxLength: 3,
              maxLines: 1,
              autofocus: true,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                suffixText: "kg",
              ),
            ),
          ),
          IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder:
                  (context) => ExerciseFrequency()));},
            icon: Icon(Icons.arrow_forward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => GoogleSignInButton()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
// class AfterWeight extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               IconButton(
//                   icon: Icon(Icons.arrow_back),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   }  ),
//               Text('您的目標體重',
//                 style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1)),
//               ),
//               SizedBox(),
//             ],
//           ),
//           const Padding(
//             padding: EdgeInsets.only(left: 60,right: 60),
//             child:TextField(
//               //controller: _pinCodeController,
//               keyboardType: TextInputType.number,
//               maxLength: 3,
//               maxLines: 1,
//               autofocus: true,
//               textAlign: TextAlign.center,
//               decoration: InputDecoration(
//                 suffixText: "kg",
//               ),
//             ),
//           ),
//           IconButton(
//             onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder:
//                   (context) => BodyFat()));},
//             icon: Icon(Icons.arrow_forward),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text('已有帳戶?'),
//               TextButton(
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder:
//                       (context) => GoogleSignInButton()));},
//                 child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class BodyFat extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: <Widget>[
//               IconButton(
//                   icon: Icon(Icons.arrow_back),
//                   onPressed: () {
//                     Navigator.of(context).pop();
//                   }  ),
//               Text('您的體脂率',
//                 style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1)),
//               ),
//               SizedBox(),
//             ],
//           ),
//           const Padding(
//             padding: EdgeInsets.only(left: 60,right: 60),
//             child:TextField(
//               //controller: _pinCodeController,
//               keyboardType: TextInputType.number,
//               maxLength: 3,
//               maxLines: 1,
//               autofocus: true,
//               textAlign: TextAlign.center,
//               decoration: InputDecoration(
//                 suffixText: "%",
//               ),
//             ),
//           ),
//           IconButton(
//             onPressed: (){
//               Navigator.push(context, MaterialPageRoute(builder:
//                   (context) => ExerciseFrequency()));},
//             icon: Icon(Icons.arrow_forward),
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Text('已有帳戶?'),
//               TextButton(
//                 onPressed: (){
//                   Navigator.push(context, MaterialPageRoute(builder:
//                       (context) => GoogleSignInButton()));},
//                 child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

class ExerciseFrequency extends StatefulWidget{
  @override
  _ExerciseFrequencyState createState() => _ExerciseFrequencyState();
}
class _ExerciseFrequencyState extends State<ExerciseFrequency> {
  bool _checkboxListChecked =false;
  bool _checkboxList2Checked=false;
  bool _checkboxList3Checked =false;
  bool _checkboxList4Checked=false;
  bool _checkboxList5Checked =false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }  ),
              Text('您的運動頻率',
                style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1)),
              ),
              SizedBox(),
            ],
          ),

          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              CheckboxListTile(
                value: _checkboxListChecked,
                onChanged: (checkboxListChecked){
                  setState((){
                    _checkboxListChecked=true;
                    _checkboxList2Checked=false;
                    _checkboxList3Checked =false;
                    _checkboxList4Checked=false;
                    _checkboxList5Checked =false;
                  });
                },
                title: Text("久坐"),
                subtitle: Text("沒啥運動><"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
              CheckboxListTile(
                value: _checkboxList2Checked,
                onChanged: (checkboxList2Checked){
                  setState((){
                    _checkboxListChecked=false;
                    _checkboxList2Checked=true;
                    _checkboxList3Checked =false;
                    _checkboxList4Checked=false;
                    _checkboxList5Checked =false;
                  });
                },
                title: Text("久坐"),
                subtitle: Text("每周運動1~3天"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
              CheckboxListTile(
                value: _checkboxList3Checked,
                onChanged: (checkboxList3Checked){
                  setState((){
                    _checkboxListChecked=false;
                    _checkboxList2Checked=false;
                    _checkboxList3Checked =true;
                    _checkboxList4Checked=false;
                    _checkboxList5Checked =false;
                  });
                },
                title: Text("中度活動量"),
                subtitle: Text("每周運動3~5天"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),CheckboxListTile(
                value: _checkboxList4Checked,
                onChanged: (checkboxList4Checked){
                  setState((){
                    _checkboxListChecked=false;
                    _checkboxList2Checked=false;
                    _checkboxList3Checked =false;
                    _checkboxList4Checked=true;
                    _checkboxList5Checked =false;
                  });
                },
                title: Text("高度活動量"),
                subtitle: Text("每周運動6~7天"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),CheckboxListTile(
                value: _checkboxList5Checked,
                onChanged: (checkboxList5Checked){
                  setState((){
                    _checkboxListChecked=false;
                    _checkboxList2Checked=false;
                    _checkboxList3Checked =false;
                    _checkboxList4Checked=false;
                    _checkboxList5Checked =true;
                  });
                },
                title: Text("非常高度活動量"),
                subtitle: Text("無時無刻都在運動XD"),
                activeColor: Color.fromRGBO(18, 213, 214, 1),
              ),
            ],
          ),
          IconButton(
            onPressed: (){
              _showAlertDialog(context);},
            icon: Icon(Icons.arrow_forward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => GoogleSignInButton()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> _showAlertDialog(BuildContext context) {
  return showDialog<void>(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("註冊成功"),
              Icon(Icons.check_circle,color: Colors.green,),
              Text("感謝您的註冊，請登入"),
            ],
          ),
        ),
        actions: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 0, 10, 40),
      child:GoogleSignInButton(),),
          // RaisedButton(
          //   child: Text('確認'),
          //   onPressed: (){
          //     Navigator.push(context, MaterialPageRoute(builder:
          //         (context) => HealthPage(user: user,)));
          //   },
          //   color: Color.fromRGBO(18, 213, 214, 1),
          // ),
        ],
      );
    },
  );
}