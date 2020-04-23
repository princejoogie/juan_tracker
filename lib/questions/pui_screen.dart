import 'package:flutter/material.dart';

class PUIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcb9b8),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Color(0xFFab0800),
              width: 10.0,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      "PUI",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFab0800),
                      ),
                    ),
                    Text(
                      "Patient Under Investigation",
                      style: TextStyle(
                        color: Color(0xFFab0800),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Uri ng Sintomas?",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
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
                            "Di Gaano / Mild",
                            style: TextStyle(color: Color(0xff3f9d2f)),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/AdultChildScreen');
                          },
                          borderSide: BorderSide(color: Color(0xff3f9d2f)),
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
                            "Malala / Kritikal",
                            style: TextStyle(color: Color(0xfff93324)),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/AdmitScreen');
                          },
                          borderSide: BorderSide(color: Color(0xfff93324)),
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
