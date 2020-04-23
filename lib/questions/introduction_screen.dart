import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
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
                flex: 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 10.0),
                    Container(
                      height: 150,
                      child: Image.asset('assets/screening/alert.png'),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "Bago mag Simula",
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
                flex: 5,
                child: Container(
                  alignment: Alignment.center,
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Text(
                    """
Nakakaramdam ka ba ng mga sumusunod na sintomas?

▪ Paninikip ng dibdib
▪ Sobrang hirap sa paghinga
▪ Labis na pagkahilo
▪ Hirap sa pagsalita at paggising""",
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
                            "Nakakaramdam ako ng kahit isa",
                            style: TextStyle(
                              color: Color(0xff3f9d2f),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/CallScreen');
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
                            "Wala akong nararamdaman",
                            style: TextStyle(
                              color: Color(0xffe20f00),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/SymptomsScreen');
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
