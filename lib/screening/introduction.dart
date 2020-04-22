import 'package:flutter/material.dart';

class IntroductionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcb9b8),
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                SizedBox(height: 20.0),
                Container(
                  height: 150,
                  child: Image.asset('assets/screening/alert.png'),
                ),
                SizedBox(height: 20.0),
                Text(
                  "Bago Magsimula",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    color: Color(0xFFab0800),
                    fontWeight: FontWeight.w300,
                    letterSpacing: 2.5,
                  ),
                ),
                SizedBox(height: 30.0),
                Padding(
                  padding: EdgeInsets.only(left: 50, right: 50),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      """
Nakakaramdam ka ba ng mga sumusunod na sintomas?

▪ Paninikip ng dibdib
▪ Sobrang hirap sa paghinga
▪ Labis na pagkahilo
▪ Hirap sa pagsalita at paggising""",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30.0),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    width: 250,
                    height: 60,
                    child: OutlineButton(
                      child: Text(
                        "Nakakaramdam ako ng kahit isa",
                        style: TextStyle(
                          color: Color(0xFF3f9d2f),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                IntroductionScreen(),
                          ),
                        );
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
                        "Wala akong nararamdaman",
                        style: TextStyle(
                          color: Color(0xFFf93324),
                        ),
                      ),
                      onPressed: () {},
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
            Positioned(
              top: 15.0,
              left: 15.0,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  color: Color(0xFF1e4072),
                  size: 40.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
