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
        title: TextButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(AppTitle,
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Icon(
                  Icons.keyboard_arrow_down,
                  color: Colors.white,
                ),
              ],
            )),
        leading: Image.asset('assets/images/setting.png'),
        backgroundColor: appGreenColor,
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
      body:ListView(
        children: [
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            icon: Image.asset('assets/images/addButton.png'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mysetting()),
              );
            },
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize:Size(15,50)
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calorie()),
              );
            },
            child: Text('熱量'),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Time()),
              );
            },
            child: Text('斷食'),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () { Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Kg()),
             );
          },
            child: Text('體重'),
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

