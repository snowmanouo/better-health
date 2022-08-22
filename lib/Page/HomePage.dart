import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project/Page/LoginPage.dart';
import 'package:project/Widgets/google_sign_in_button.dart';

class UserInfoScreen extends StatefulWidget {
  const UserInfoScreen({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                alignment: Alignment.center,
                color: Color.fromRGBO(18, 213, 214, 1),
                child: SvgPicture.asset('assets/images/vector.svg'),
                constraints: BoxConstraints(
                    maxWidth: 150, maxHeight: 150)
            ),
            Text('願你暴瘦')
            ,
            Text('Hope you can be more fit!'),
            SizedBox(height: 30),
            RaisedButton(
              child: Text('我是新用戶'),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => NewLogin()));
              },
              color: Color.fromRGBO(18, 213, 214, 1),
            ),
            RaisedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => GoogleSignInButton()));
              },
              child: Text('我已經有帳戶了'),
              textColor: Color.fromRGBO(18, 213, 214, 1),
              color: Colors.white,)
          ],
        ),
      ),
    );
  }
}