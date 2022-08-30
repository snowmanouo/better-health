import 'package:flutter/material.dart';
import 'package:project/Page/HealthPage.dart';
import 'package:project/Page/MyselfPage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:project/Page/SettingPage.dart';

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    _children = [
      MyselfPage(),
      HealthPage(user: widget._user),
      MyselfPage(),
      SettingPage(user: widget._user),
    ];
  }

  // final User _user;
  int _currentIndex = 0;
  List<Widget> _children = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
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
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

class Home extends StatefulWidget {
  const Home({Key? key, required User user})
      : _user = user,
        super(key: key);

  final User _user;

  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
