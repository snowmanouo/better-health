
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:project/Page/HealthPage.dart';
import 'package:project/Page/LoginPage.dart';
import 'package:project/Page/authentication.dart';
import 'package:project/Widgets/google_sign_in_button.dart';
import 'package:project/helpers/Constants.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _SettingPage createState() => _SettingPage();
}

class _SettingPage extends State<SettingPage> {
  late User _user;
  bool _isSigningOut = false;

  Route _routeToLoginPage() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => LoginPage(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        var begin = Offset(-1.0, 0.0);
        var end = Offset.zero;
        var curve = Curves.ease;

        var tween =
        Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

        return SlideTransition(
          position: animation.drive(tween),
          child: child,
        );
      },
    );
  }

  @override
  void initState() {
    _user = widget._user;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('設定'),
        backgroundColor: appGreenColor,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 10,),
          Container(
            constraints: BoxConstraints(maxHeight: 47,maxWidth: 360,minHeight: 47,minWidth: 360),
          child:Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              //Image(image: AssetImage('assets/images/Signout.png'),height: 25,width: 20,),
              //SizedBox(width: 10,),
              Expanded(child: TextButton(
                  onPressed: ()  {
                    // Navigator.push(context, MaterialPageRoute(builder:
                    //     (context) => Mysetting()));
                  },
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:<Widget>[
                      Padding(padding: EdgeInsets.only(left: 10),
                        child: Icon(Icons.mode_edit_outline,size:26,color: Colors.black,),
                      ),
                      Text('修改個人資料',
                    style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500,color: Colors.black),
                      ),SizedBox(),SizedBox(),SizedBox(),
    Padding(padding: EdgeInsets.only(right: 10),
    child: Image(image: AssetImage('assets/images/personal_arrow.png'),),),
                    ],),),),
              ],
          )
          ),
          SizedBox(height: 10,),
          Container(
              constraints: BoxConstraints(maxHeight: 47,maxWidth: 360,minHeight: 47,minWidth: 360),
              child:Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  //Image(image: AssetImage('assets/images/Signout.png'),height: 25,width: 20,),
                  //SizedBox(width: 10,),
                  Expanded(child: TextButton(
                    onPressed: () async {
                      setState(() {
                        _isSigningOut = true;
                      });
                      await Authentication.signOut(context: context);
                      setState(() {
                        _isSigningOut = false;
                      });
                      Navigator.of(context)
                          .pushReplacement(_routeToLoginPage());
                    },
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Padding(padding: EdgeInsets.only(left: 10),
                          child: Image(image: AssetImage('assets/images/Signout.png'),height: 25,width: 20,),
                        ),
                        Text('登出',
                          style: TextStyle(fontSize: 18,fontWeight:FontWeight.w500,color: Colors.black),
                        ),SizedBox(),SizedBox(),SizedBox(),SizedBox(),
                        Padding(padding: EdgeInsets.only(right: 10),
                          child: Image(image: AssetImage('assets/images/personal_arrow.png'),),),
                      ],),),),
                ],
              )
          ),
        ],
      ),
    );
  }
}
