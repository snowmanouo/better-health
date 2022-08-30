import 'package:flutter/material.dart';
import 'package:project/Page/MyselfPage.dart';

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    // TODO: need to replace with correct pages
    MyselfPage(),
    MyselfPage(),
    MyselfPage(),
    MyselfPage(),
    // HealthPage(),
    // MyselfPage(),
    // SettingPage(),
  ];

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
  @override
  State<StatefulWidget> createState() {
    return _HomeState();
  }
}
