import 'package:flutter/material.dart';

class SymptomsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcb9b8),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 20.0),
            Container(
              height: 150,
              child: Image.asset('assets/screening/alert.png'),
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
                    "Meron",
                    style: TextStyle(
                      color: Color(0xFF3f9d2f),
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/ExposureScreen');
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
                    Navigator.of(context).pushReplacementNamed('/PUMScreen');
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
    );
  }
}
