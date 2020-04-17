import 'package:flutter/material.dart';
import 'package:juan_tracker/screens/login_screen.dart';
import 'package:juan_tracker/screens/user_dashboard.dart';

class ChooseUser extends StatefulWidget {
  @override
  _ChooseUserState createState() => _ChooseUserState();
}

class _ChooseUserState extends State<ChooseUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Align(
                child: Text(
                  "Ikaw Ay",
                  style: TextStyle(
                    fontSize: 60,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.local_hospital,
                color: Colors.red,
                size: 150.0,
              ),
            ),
            Align(
              child: Text(
                "Healthcare Facility",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => UserDashboard(),
                  ),
                );
              },
              child: Icon(
                Icons.account_box,
                color: Colors.red,
                size: 150.0,
              ),
            ),
            Align(
              child: Text(
                "Individual",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
