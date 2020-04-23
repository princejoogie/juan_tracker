import 'package:flutter/material.dart';

class AdultChildScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F2F2),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Person Under Investigation",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        color: Color(0xFFab0800),
                        fontWeight: FontWeight.bold,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset('assets/screening/grandparents.png'),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
                        child: OutlineButton(
                          child: Text(
                            "Matanda na o may iba pang sakit tulad ng diabetes, asthma, altapresyon, atbp.",
                            style: TextStyle(
                              color: Color(0xff3f9d2f),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/AdmitScreen');
                          },
                          borderSide: BorderSide(
                            color: Color(0xff3f9d2f),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 150,
                      child: Image.asset('assets/screening/children.png'),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        padding: EdgeInsets.only(left: 30.0, right: 30.0),
                        child: OutlineButton(
                          child: Text(
                            "Bata pa o walang ibang sakit",
                            style: TextStyle(
                              color: Color(0xffe20f00),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/HomeIsolationScreen');
                          },
                          borderSide: BorderSide(
                            color: Color(0xffe20f00),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
