import 'package:flutter/material.dart';

import 'home.dart';
import 'notification.dart';
import 'profile.dart';

class TabbarScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BaseRootUI();
  }
}

class BaseRootUI extends State<TabbarScreen> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF384F71),
          title: Text('TabBar Widget'),
          centerTitle: true,
        ),
        body: TabBarView(
          children: <Widget>[
            HomeScreen(),
            NotificationScreen(),
            ProfileScreen()
          ],
        ),
        bottomNavigationBar: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: 'Home'),
              Tab(icon: Icon(Icons.notifications), text: 'Notification'),
              Tab(icon: Icon(Icons.person), text: 'Profile')
            ],
            unselectedLabelColor: Colors.black12,
            labelColor: Color(0xFF384F71),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorWeight: 1),
      ),
    );
  }
}
