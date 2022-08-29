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

class Mysetting extends StatelessWidget {
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
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.male),
                                iconSize: 50.0,
                              ),
                              IconButton(
                                  onPressed: () {}, icon: Icon(Icons.female),
                                iconSize: 50.0,),
                            ],
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
            ],
          ),
        ],
      ),
    );
  }
}
