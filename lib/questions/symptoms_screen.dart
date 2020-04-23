import 'package:flutter/material.dart';

class SymptomsScreen extends StatelessWidget {
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
                flex: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Container(
                      height: 150,
                      child: Image.asset('assets/screening/symptoms.png'),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Sintomas",
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
                flex: 4,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Text(
                    """
Nakakaramdam ka ba ng mga sumusunod?

▪ LAGNAT?
▪ UBO?
▪ HINGAL?
▪ SINTOMAS SA BAGA?""",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
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
                              color: Color(0xff3f9d2f),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/ExposureScreen');
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
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 250,
                        height: 60,
                        child: OutlineButton(
                          child: Text(
                            "Wala",
                            style: TextStyle(
                              color: Color(0xffe20f00),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/PUMScreen');
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
