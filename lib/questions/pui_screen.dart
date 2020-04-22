import 'package:flutter/material.dart';

class PUIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcb9b8),
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 2 - 50,
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
                    Text("Patient Under Investigation",
                        style: TextStyle(
                          color: Color(0xFFab0800),
                        )),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 2 - 50,
                child: ListView(
                  reverse: true,
                  children: <Widget>[
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 250,
                        height: 60,
                        child: OutlineButton(
                          child: Text(
                            "Di Gaano / Mild",
                            style: TextStyle(
                              color: Color(0xFF3f9d2f),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/AdultChildScreen');
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
                    SizedBox(height: 10.0),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 250,
                        height: 60,
                        child: OutlineButton(
                          child: Text(
                            "Malala / Kritikal",
                            style: TextStyle(
                              color: Color(0xFF3f9d2f),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacementNamed('/AdmitScreen');
                          },
                          borderSide: BorderSide(
                            color: Color(0xFF54c242),
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
                      child: Text("Uri ng Sintomas?"),
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
