import 'package:flutter/material.dart';

class ScreeningTab extends StatefulWidget {
  const ScreeningTab({Key key}) : super(key: key);

  @override
  _ScreeningTabState createState() => _ScreeningTabState();
}

class _ScreeningTabState extends State<ScreeningTab> {
  List<Widget> listScreens;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 10.0),
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
                Text("Based on DOH guidelines 16 March 2020"),
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
Tatanungin ka ukol sa mga sintomas, travel history at posibleng contact

Hindi ibabahagi ang inyong mga sagot ng walang permiso""",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
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
                    "Simulan",
                    style: TextStyle(
                      color: Color(0xff3f9d2f),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).pushNamed('/IntroductionScreen');
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
          ),
        ],
      ),
    );
  }
}
