import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController facilityName = new TextEditingController();
  TextEditingController email = new TextEditingController();
  TextEditingController password = new TextEditingController();

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

  Future<void> _register() async {
    if (email.text.trim().length <= 0 ||
        password.text.trim().length <= 0 ||
        facilityName.text.trim().length <= 0) {
      _showError("Error", "One or more fields are empty.");
    } else {
      var stmt = "https://juantracker.tech/register.php";
      final response = await http.post(stmt, body: {
        'name': facilityName.text.trim(),
        'email': email.text.trim(),
        'password': password.text.trim(),
      });

      print('Response status: ${response.statusCode}');
      print('Response body: ${response.body}');
      _showError("Response", response.body);
    }
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
              padding: const EdgeInsets.all(50.0),
              child: Container(
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
                    SizedBox(height: 10.0),
                    Align(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Color(0xFF7B7676),
                        ),
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Text(
                      "Facility Name",
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
                          controller: facilityName,
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
                          _register();
                        },
                        child: Text(
                          "Register",
                          style: TextStyle(fontSize: 14.0),
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
