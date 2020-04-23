import 'package:flutter/material.dart';

class ExposureScreen extends StatelessWidget {
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
                      child: Image.asset('assets/screening/exposure.png'),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "May Exposure?",
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
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Sa bansang may COVID-19",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "▪ Bumisita o nanirahan",
                          style: TextStyle(fontSize: 16),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          "Sa taong may COVID-19 (1 meter or 3 feet)",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          "▪ Nag-aalaga ng pasyente nang walang gloves/mask",
                          style: TextStyle(fontSize: 16),
                        ),
                        Text(
                          "▪ Kasama sa isang saradong lugar (bahay, trabaho, classroom, o ibang pagtitipon) o sasakyan",
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
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
                                .pushReplacementNamed('/DayExposedScreen');
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
                                .pushReplacementNamed('/BadSymptomsScreen');
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
