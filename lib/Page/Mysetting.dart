import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project/Page/Database.dart';
import '../helpers/Constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';
import 'Mysetting.dart';
import 'Calorie.dart';
import 'Time.dart';
import 'Kg.dart';

class Mysetting extends StatefulWidget {
  Mysetting({Key? key, required User user}) : _user = user;

  final User _user;
  @override
  _Mysetting createState() => _Mysetting(user: _user);
}
  class _Mysetting extends State<Mysetting> {
    _Mysetting({Key? key, required User user}) : _user = user;

    final User _user;
    OurUser _ourUser = OurUser.empty();

    @override
    void initState() {
      Database().getUser(widget._user.uid, (data) {
        setState((){
          _ourUser = data;
        });
      });
      super.initState();
    }

    bool _male = true;
    bool _female = false;
    bool _checkboxListChecked =true;
    bool _checkboxList2Checked=false;
    bool _checkboxList3Checked =false;
    bool _checkboxList4Checked=false;
    bool _checkboxList5Checked =false;
    @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('設定個人頁面',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: appGreenColor,
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            Container(
                constraints: BoxConstraints(
                    maxHeight: 47, maxWidth: 360, minHeight: 47, minWidth: 360),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Expanded(
                      child: TextButton(
                    onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text('性別'),
                                actions: <Widget>[
                                  CheckboxListTile(
                                    value: _male,
                                    onChanged: (value) {
                                      setState(() {
                                        _male = true;
                                        _female = false;
                                      });

                                      Navigator.of(context).pop();

                                    },
                                    title: Text("男性"),
                                    activeColor: Color.fromRGBO(18, 213, 214, 1),
                                  ),
                                  CheckboxListTile(
                                    value: _female,
                                    onChanged: (value) {
                                      setState(() {
                                        _male = false;
                                        _female = true;
                                      });
                                      Navigator.of(context).pop();
                                    },
                                    title: Text("女性"),
                                    activeColor: Color.fromRGBO(18, 213, 214, 1),
                                  ),],),),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.account_box_rounded,
                                size: 26,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text(
                              '性別',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Flexible(child: SizedBox(width: 205,)),
                            if(_ourUser.sex == Sex.male)
                              Text("男性",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black),),
                            if(_ourUser.sex == Sex.female)
                              Text("女性",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            Padding(
                              padding: EdgeInsets.only(left:5,right: 10),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/personal_arrow.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                constraints: BoxConstraints(
                    maxHeight: 47, maxWidth: 360, minHeight: 47, minWidth: 360),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //Image(image: AssetImage('assets/images/Signout.png'),height: 25,width: 20,),
                    //SizedBox(width: 10,),
                    Expanded(
                      child: TextButton(
                    onPressed: () => showDialog<String>(
                              context: context,
                              builder: (BuildContext context) => AlertDialog(
                                title: Text('年齡'),
                                content: const TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: '請輸入年齡',
                                  ),
                                ),
                                actions: <Widget>[
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'OK'),
                                    child: Text('OK'),
                                  ),
                                  TextButton(
                                    onPressed: () => Navigator.pop(context, 'Cancel'),
                                    child: Text('Cancel'),
                                  ),
                                ],
                              ),
                            ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.cake,
                                size: 26,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text(
                              '年齡',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Flexible(child:SizedBox(width: 205,)),
                            Text((_ourUser.age).toString(),
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            Padding(
                              padding: EdgeInsets.only(left:5,right: 10),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/personal_arrow.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                constraints: BoxConstraints(
                    maxHeight: 47, maxWidth: 360, minHeight: 47, minWidth: 360),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //Image(image: AssetImage('assets/images/Signout.png'),height: 25,width: 20,),
                    //SizedBox(width: 10,),
                    Expanded(
                      child: TextButton(
                    onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text('身高'),
                                  content: const TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: '請輸入身高(cm)',
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: Text('OK'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'Cancel'),
                                      child: Text('Cancel'),
                                    ),
                                  ],
                                ),
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.height,
                                size: 26,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text(
                              '身高',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Flexible(child: SizedBox(width: 205,)),
                            Text(_ourUser.height.toString()+"cm",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            Padding(
                              padding: EdgeInsets.only(left:5,right: 10),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/personal_arrow.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                constraints: BoxConstraints(
                    maxHeight: 47, maxWidth: 360, minHeight: 47, minWidth: 360),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //Image(image: AssetImage('assets/images/Signout.png'),height: 25,width: 20,),
                    //SizedBox(width: 10,),
                    Expanded(
                      child: TextButton(
                    onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text('體重'),
                                  content: const TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(),
                                      labelText: '請輸入體重(kg)',
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'OK'),
                                      child: Text('OK'),
                                    ),
                                    TextButton(
                                      onPressed: () => Navigator.pop(context, 'Cancel'),
                                      child: Text('Cancel'),
                                    ),
                                  ],
                                ),
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.keyboard_outlined,
                                size: 26,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text(
                              '體重',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Flexible(child: SizedBox(width: 205,)),
                            Text(_ourUser.weight.toString()+"kg",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            Padding(
                              padding: EdgeInsets.only(left:5,right: 10),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/personal_arrow.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
            SizedBox(
              height: 10,
            ),
            Container(
                constraints: BoxConstraints(
                    maxHeight: 47, maxWidth: 360, minHeight: 47, minWidth: 360),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    //Image(image: AssetImage('assets/images/Signout.png'),height: 25,width: 20,),
                    //SizedBox(width: 10,),
                    Expanded(
                      child: TextButton(
                    onPressed: () => showDialog<String>(
                                context: context,
                                builder: (BuildContext context) => AlertDialog(
                                  title: Text('運動頻率'),
                                  actions: <Widget>[
                                    CheckboxListTile(
                                      value: _checkboxListChecked,
                                      onChanged: (checkboxListChecked){
                                        setState((){
                                          _checkboxListChecked=true;
                                          _checkboxList2Checked=false;
                                          _checkboxList3Checked =false;
                                          _checkboxList4Checked=false;
                                          _checkboxList5Checked =false;
                                        });Navigator.of(context).pop();
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
                                        });Navigator.of(context).pop();
                                      },
                                      title: Text("輕量活動"),
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
                                        });Navigator.of(context).pop();
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
                                        });Navigator.of(context).pop();
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
                                        Navigator.of(context).pop();
                                      },
                                      title: Text("非常高度活動量"),
                                      subtitle: Text("無時無刻都在運動XD"),
                                      activeColor: Color.fromRGBO(18, 213, 214, 1),
                                    ),
                                  ],
                                ),
                              ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.directions_run,
                                size: 26,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 30,),
                            Text(
                              '運動頻率',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),
                            ),
                            Flexible(child:SizedBox(width: 168,)),
                            if(_ourUser.freq == 1.2)
                                Text("久坐",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),),
                            if(_ourUser.freq == 1.375)
                              Text("輕量活動",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            if(_ourUser.freq == 1.55)
                              Text("中度活動量",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            if(_ourUser.freq == 1.725)
                              Text("高度活動量",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            if(_ourUser.freq == 1.9)
                              Text("非常高度活動量",style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black),),
                            Padding(
                              padding: EdgeInsets.only(left:5,right: 10),
                              child: Image(
                                image: AssetImage(
                                    'assets/images/personal_arrow.png'),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
    );
  }
}
