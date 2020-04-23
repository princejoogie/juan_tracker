import 'package:flutter/material.dart';

class BadSymptomsScreen extends StatelessWidget {
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
                flex: 3,
                child: Column(
                  children: [
                    SizedBox(height: 20.0),
                    Container(
                      height: 150,
                      child: Image.asset('assets/screening/bad_symptoms.png'),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: EdgeInsets.only(left: 30.0, right: 30.0),
                      child: Text(
                        "May malalang sintomas o di pangkaraniwang pulmonya? May kasama sa bahay, classroom, trabaho, na may trangkaso?",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 30,
                          color: Color(0xFFab0800),
                          fontWeight: FontWeight.w300,
                          letterSpacing: 2.5,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 250,
                        height: 60,
                        child: OutlineButton(
                          child: Text(
                            "Meron",
                            style: TextStyle(
                              color: Color(0xFF3f9d2f),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/PUIScreen');
                          },
                          borderSide: BorderSide(
                            color: Color(0xFF3f9d2f),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 250,
                        height: 60,
                        child: OutlineButton(
                          child: Text(
                            "Wala",
                            style: TextStyle(
                              color: Color(0xFFf93324),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/NotSuspectScreen');
                          },
                          borderSide: BorderSide(
                            color: Color(0xFFf93324),
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
