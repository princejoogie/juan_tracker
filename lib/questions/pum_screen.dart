import 'package:flutter/material.dart';

class PUMScreen extends StatelessWidget {
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
              color: Color(0xFFf28500),
              width: 10.0,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "PUM",
                      style: TextStyle(
                        fontSize: 100,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFf28500),
                      ),
                    ),
                    Text(
                      "Patient Under Monitoring",
                      style: TextStyle(
                        color: Color(0xFFf28500),
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "May exposure, Walang sintomas",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "1. Hindi kailangang itest",
                        style: TextStyle(fontSize: 16),
                      ),
                      RichText(
                        text: TextSpan(
                          style: new TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "2. Self-quarantine: ",
                              style: TextStyle(fontSize: 16),
                            ),
                            TextSpan(
                              text: "14 araw",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.0),
                      Text(
                        "Para sa DOKTOR:",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "1. Sabihan ang Regional Epidemiology Surveillance Unit",
                        style: TextStyle(fontSize: 16),
                      ),
                      Text(
                        "2. Sagutin ang Case Investigation Form",
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
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
                        "Bumalik sa Dashboard",
                        style: TextStyle(
                          color: Color(0xffe20f00),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
