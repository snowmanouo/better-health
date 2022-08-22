import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project/Widgets/google_sign_in_button.dart';


import 'authentication.dart';

class LoginPage extends StatelessWidget {

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
            SizedBox(height : 30),
            RaisedButton(
              child: Text('我是新用戶'),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => NewLogin()));},
              color: Color.fromRGBO(18, 213, 214, 1),
            ),
            RaisedButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder:
                    (context) => GoogleSignInButton()));},
              child: Text('我已經有帳戶了'),
              textColor: Color.fromRGBO(18, 213, 214, 1),
              color: Colors.white,)
          ],
        ),
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
                      (context) => NewLogin()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class Gender extends StatelessWidget {
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
          Container(
            color: Color.fromRGBO(18, 213, 214, 1),
            alignment: Alignment.topCenter,
            child: Text('男性'),
            constraints: BoxConstraints(
                maxWidth: 100, maxHeight: 100),
          ),
          Container(
            color: Color.fromRGBO(18, 213, 214, 1),
            alignment: Alignment.topCenter,
            child: Text('女性'),
            constraints: BoxConstraints(
                maxWidth: 100, maxHeight: 100),
          ),
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
                      (context) => NewLogin()));},
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
                      (context) => NewLogin()));},
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
                      (context) => NewLogin()));},
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
                  (context) => AfterWeight()));},
            icon: Icon(Icons.arrow_forward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => NewLogin()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}
class AfterWeight extends StatelessWidget {
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
              Text('您的目標體重',
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
                  (context) => BodyFat()));},
            icon: Icon(Icons.arrow_forward),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => NewLogin()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}

class BodyFat extends StatelessWidget {
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
              Text('您的體脂率',
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
                suffixText: "%",
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
                      (context) => NewLogin()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}

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
          FutureBuilder(
            future: Authentication.initializeFirebase(context: context),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Error initializing Firebase');
              } else if (snapshot.connectionState == ConnectionState.done) {
                return GoogleSignInButton();
              }
              return CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.orange,
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('已有帳戶?'),
              TextButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder:
                      (context) => NewLogin()));},
                child: Text('登入',style: TextStyle(color: Color.fromRGBO(18, 213, 214, 1))),
              )
            ],
          ),
        ],
      ),
    );
  }
}