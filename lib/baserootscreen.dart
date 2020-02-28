import 'package:flutter/material.dart';

import 'home.dart';
import 'notification.dart';
import 'profile.dart';

class BaseLayoutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BaseRootUI();
  }
}

class BaseRootUI extends State<BaseLayoutScreen> {

  static List<Widget> _titleOptions = <Widget>[
    Text('HOME'),
    Text('NOTIFICATIONS'),
    Text('PROFILE'),
  ];

  static List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    NotificationScreen(),
    ProfileScreen(),
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: _titleOptions.elementAt(_selectedIndex),
        centerTitle: true,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('HOME')),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            title: Text('NOTIFICATIONS')),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('PROFILE')),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
