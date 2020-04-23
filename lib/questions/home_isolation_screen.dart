import 'package:flutter/material.dart';

class HomeIsolationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcb9b8),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFab0800),
              width: 10.0,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset('assets/screening/house.png'),
                    ),
                    SizedBox(height: 10.0),
                    Text(
                      "Home Isolation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xFFab0800),
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Text(
                    """
1. Manatili sa bahay ng 14 na araw

2. Hindi kailangan i-test""",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 250,
                    height: 60,
                    child: OutlineButton(
                      child: Text(
                        "Bumalik sa Dashboard",
                        style: TextStyle(color: Color(0xff3f9d2f)),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      borderSide: BorderSide(color: Color(0xff3f9d2f)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
