import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' show json;

import 'package:juan_tracker/screens/facility_dashboard.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController username = new TextEditingController();
  TextEditingController password = new TextEditingController();

  _showError(String msg) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Error'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(msg),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Future<void> _login() async {
    if (username.text.length <= 0 || password.text.length <= 0) {
      _showError("One or more fields are empty.");
    } else {
      var stmt = "http://192.168.1.5/home_buddy_crud/api/login.php?uname=" +
          username.text.trim() +
          "&pw=" +
          password.text.trim();
      final response = await http.get(
        stmt,
      );

      var userData = json.decode(response.body);
      if (userData.length == 0) {
        _showError("Login Failed.");
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => FacilityDashboard(),
          ),
        );
      }
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 100.0, 50.0, 20.0),
          child: Container(
            height: 400,
            width: double.infinity,
            child: ListView(
              children: <Widget>[
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/logo.png',
                    height: 100,
                    width: 100,
                  ),
                ),
                SizedBox(height: 30.0),
                Text(
                  "Email or Username",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF7B7676),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFdbdbdb),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: username,
                      keyboardType: TextInputType.emailAddress,
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Password",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFF7B7676),
                  ),
                ),
                SizedBox(height: 10.0),
                Container(
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFFdbdbdb),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: TextField(
                      controller: password,
                      obscureText: true,
                      textAlignVertical: TextAlignVertical.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                      ),
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                Container(
                  width: double.infinity,
                  height: 40,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.red,
                    textColor: Colors.white,
                    disabledColor: Colors.grey,
                    disabledTextColor: Colors.black,
                    splashColor: Colors.blueAccent,
                    onPressed: () {
                      _login();
                    },
                    child: Text(
                      "Login",
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
