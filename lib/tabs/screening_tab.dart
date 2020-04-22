import 'package:flutter/material.dart';
import 'package:juan_tracker/screening/introduction.dart';

class ScreeningTab extends StatefulWidget {
  const ScreeningTab({Key key}) : super(key: key);

  @override
  _ScreeningTabState createState() => _ScreeningTabState();
}

class _ScreeningTabState extends State<ScreeningTab> {
  List<Widget> listScreens;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(height: 20.0),
        Container(
          height: 150,
          child: Image.asset('assets/screening/coronavirus.png'),
        ),
        SizedBox(height: 20.0),
        Text(
          "SCREENING TOOL\nPARA SA COVID 19",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 30,
            color: Color(0xFFab0800),
            fontWeight: FontWeight.w300,
            letterSpacing: 2.5,
          ),
        ),
        Text(
          "Based on DOH guidelines 16 March 2020",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13, color: Color(0xFF262626)),
        ),
        SizedBox(height: 30.0),
        Padding(
          padding: EdgeInsets.only(left: 50, right: 50),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              """
Tatanungin ka ukol sa mga sintomas, travel history at posibleng contact

Hindi ibabahagi ang inyong mga sagot ng walang permiso""",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
        SizedBox(height: 30.0),
        Align(
          alignment: Alignment.center,
          child: Container(
            width: 200,
            height: 60,
            child: OutlineButton(
              child: Text(
                "Sang-ayon",
                style: TextStyle(
                  color: Color(0xFF3f9d2f),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => IntroductionScreen(),
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
            width: 200,
            height: 60,
            child: OutlineButton(
              child: Text(
                "Di Sang-ayon",
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
    );
  }
}
