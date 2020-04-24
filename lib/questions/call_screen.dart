import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcb9b8),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Container(
                      height: 150,
                      child: Image.asset('assets/screening/telephone.png'),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Tumawag agad sa\n02-894-26843",
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
                flex: 1,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Text(
                    """
Base sa iyong mga sintomas kinakailangan mo nang pumunta sa ospital""",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 250,
                    height: 60,
                    child: OutlineButton(
                      child: Text(
                        "Tumawag sa malapit na ospital",
                        style: TextStyle(
                          color: Color(0xff3f9d2f),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => launch("tel://0289426843"),
                      // onPressed: () => launch("whatsapp://send?phone=0289426843"),
                      borderSide: BorderSide(
                        color: Color(0xff3f9d2f),
                      ),
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
