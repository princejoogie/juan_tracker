import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:juan_tracker/screens/facility_dashboard.dart';
import 'package:juan_tracker/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

  bool loading = false;

  _showError(String title, String msg) {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
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
    if (email.text.trim().length <= 0 || password.text.trim().length <= 0) {
      _showError("Error", "One or more fields are empty.");
    } else {
      var stmt = "https://juantracker.tech/api/login.php";
      final response = await http.post(stmt, body: {
        'email': email.text.trim(),
        'password': password.text.trim(),
      });

      // print('Response status: ${response.statusCode}');
      // print('Response body: ${response.body}');
      // _showError("Response", response.body);

      if (response.statusCode == 200) {
        if (response.body == 'success') {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => FacilityDashboard(),
            ),
          );
        } else {
          _showError("Login Failed", response.body);
        }
      } else {
        _showError("Error", "Error Connecting");
      }
    }
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 15.0,
              left: 15.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.red,
                  size: 40.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(50.0),
              child: Container(
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
                    Align(
                      child: Text(
                        "Juan Tracker",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Color(0xFF7B7676),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      "Email",
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
                          controller: email,
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
                    loading
                        ? LinearProgressIndicator()
                        : Container(
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
                                setState(() {
                                  loading = true;
                                });
                                _login();
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(fontSize: 14.0),
                              ),
                            ),
                          ),
                    SizedBox(height: 10.0),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) => RegisterScreen(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(left: 10.0),
                        child: Text(
                          "Register",
                          style: TextStyle(
                            color: Colors.blue,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
