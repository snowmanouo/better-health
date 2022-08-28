import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../helpers/Constants.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'Page1.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:table_calendar/table_calendar.dart';
import 'Mysetting.dart';
import 'Calorie.dart';
import 'Time.dart';
import 'Kg.dart';

class MyselfPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("個人數據"),
        backgroundColor: Color.fromRGBO(0, 163, 165, 1),
        leading: Image.asset('assets/images/setting.png'),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 0),
            child: GestureDetector(
              onTap: () {},
              child: (Image.asset('assets/images/user.png')),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
        children: [
          Column(
            children: [

              SizedBox(
                height: 100,
                width: 0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 163, 165, 1), // background
                    onPrimary: Colors.white, // foreground
                    minimumSize: Size(400, 100)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Calorie()),
                  );
                },
                child: Text('熱量'),
              ),
              SizedBox(
                height: 30,
                width: 0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 163, 165, 1), // background
                    onPrimary: Colors.white, // foreground
                    minimumSize: Size(400, 100)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Time()),
                  );
                },
                child: Text('斷食'),
              ),
              SizedBox(
                height: 30,
                width: 0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(0, 163, 165, 1), // background
                    onPrimary: Colors.white, // foreground
                    minimumSize: Size(400, 100)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kg()),
                  );
                },
                child: Text('體重'),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Image.asset('assets/images/home_off.png'),
            activeIcon: new Image.asset('assets/images/home_on.png'),
            label: ('')),
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Image.asset('assets/images/diary_off.png'),
            activeIcon: new Image.asset('assets/images/diary_on.png'),
            label: ('')),
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Image.asset('assets/images/profile_off.png'),
            activeIcon: new Image.asset('assets/images/profile_on.png'),
            label: ('')),
        BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: new Image.asset('assets/images/more_off.png'),
            activeIcon: new Image.asset('assets/images/more_on.png'),
            label: ('')),
      ],
      type: BottomNavigationBarType.fixed,
    );
  }
}
