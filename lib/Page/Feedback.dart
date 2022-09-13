import 'package:flutter/material.dart';
import 'package:project/Page/LoginPage.dart';
import 'package:project/helpers/Constants.dart';

class FeedBack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('問題反饋',
            style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
        backgroundColor: appGreenColor,
      ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 55,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image(image:AssetImage('assets/images/question.png')),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('您不滿意的是?',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),)
            ],
          ),
          SizedBox(height: 50,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(padding: EdgeInsets.only(left: 10),
                child:
              Text('反饋內容',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87),),),
            ],
          ),
          SizedBox(height: 5,),
      Flexible(child:Padding(padding: EdgeInsets.symmetric(horizontal: 15),
                child: Container(
                  height: 150,
                  decoration: new BoxDecoration(
                        color: Color.fromRGBO(238, 238, 238, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8.0)),),
                child:Expanded(child:TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: '請盡可能告訴我們細節，以便解決您的問題',
                  ),
                ),),
              ),),),
          SizedBox(height: 5,),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(padding: EdgeInsets.only(left: 15),child:
                Container(
              height: 60,width: 60,
              decoration: new BoxDecoration(
                color: Color.fromRGBO(238, 238, 238, 1),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),),
              child:Expanded(
                  child:IconButton(
            onPressed: () {
            // Navigator.push(
            //     context, MaterialPageRoute(builder: (context) => FeedBack()));
          },
            icon: Image.asset('assets/images/newphoto.png'),
            iconSize: 20,))))]),
      Flexible(child:SizedBox(height: 80,),),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Color.fromRGBO(18, 213, 214, 1)),
              minimumSize: MaterialStateProperty.all(Size(328, 52)),
            ),
              onPressed: () {
                Navigator.of(context).pop();
                // Navigator.push(
                //     context, MaterialPageRoute(builder: (context) => FeedBack()));
              },
              child: Text("確認"))
        ]
      ),
    );
  }
}