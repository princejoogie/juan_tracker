import 'package:flutter/material.dart';
import 'package:juan_tracker/tabs/relief_tab.dart';
import 'package:juan_tracker/tabs/screening_tab.dart';
import 'package:juan_tracker/tabs/update_tab.dart';

class UserDashboard extends StatefulWidget {
  UserDashboard({Key key}) : super(key: key);

  @override
  _UserDashboardState createState() => _UserDashboardState();
}

class _UserDashboardState extends State<UserDashboard> {
  int tabIndex = 1;

  List<Widget> listScreens;
  @override
  void initState() {
    super.initState();
    listScreens = [
      ReliefTab(
        key: PageStorageKey('HomeTab'),
      ),
      UpdateTab(
        key: PageStorageKey('AlertTab'),
      ),
      ScreeningTab(
        key: PageStorageKey('CartTab'),
      ),
    ];
  }

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: PageStorage(
        child: SafeArea(
          child: listScreens[tabIndex],
        ),
        bucket: bucket,
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10.0,
        selectedItemColor: Colors.black87,
        unselectedItemColor: Colors.grey[400],
        backgroundColor: Color(0xFFFFFFFF),
        currentIndex: tabIndex,
        onTap: (int index) {
          setState(() {
            tabIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.local_hospital),
            title: Text('Relief'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            title: Text('Update'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text('Screening'),
          ),
        ],
      ),
    );
  }
}
