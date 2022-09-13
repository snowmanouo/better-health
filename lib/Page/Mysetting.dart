import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  @override
  _Mysetting createState() => _Mysetting();
}
  class _Mysetting extends State<Mysetting> {
  bool _male = false;
  bool _female = false;
  bool _checkboxListChecked =false;
  bool _checkboxList2Checked=false;
  bool _checkboxList3Checked =false;
  bool _checkboxList4Checked=false;
  bool _checkboxList5Checked =false;
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
      body: ListView(

        children: [
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.account_box_rounded),
                  Text("性別"),
                  SizedBox(width: 206),
                  Align(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
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
                            ),
                          ],
                        ),
                      ),
                      child: Row(
                        children: [
                          Text('性別'),
                          Icon(Icons.keyboard_double_arrow_right)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.cake),
                  Text("年齡"),
                  SizedBox(width: 206),
                  Align(
                    child: TextButton(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
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
                      child:Row(
                        children: [
                          Text('年齡'),
                          Icon(Icons.keyboard_double_arrow_right)
                        ],
                      )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.arrow_upward),
                  Text("身高"),
                  SizedBox(width: 206),
                  Align(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
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
                        child:Row(
                          children: [
                            Text('身高'),
                            Icon(Icons.keyboard_double_arrow_right)
                          ],
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.keyboard_outlined),
                  Text("體重"),
                  SizedBox(width: 206),
                  Align(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
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
                        child:Row(
                          children: [
                            Text('體重'),
                            Icon(Icons.keyboard_double_arrow_right)
                          ],
                        )
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.directions_run),
                  Text("運動頻率"),
                  SizedBox(width: 150),
                  Align(
                    child: TextButton(
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
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
                                  });Navigator.of(context).pop();
                                },
                                title: Text("非常高度活動量"),
                                subtitle: Text("無時無刻都在運動XD"),
                                activeColor: Color.fromRGBO(18, 213, 214, 1),
                              ),
                            ],
                          ),
                        ),
                        child:Row(
                          children: [
                            Text('運動頻率'),
                            Icon(Icons.keyboard_double_arrow_right)
                          ],
                        )
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
