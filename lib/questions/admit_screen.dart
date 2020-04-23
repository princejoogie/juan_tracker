import 'package:flutter/material.dart';

class AdmitScreen extends StatelessWidget {
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
                child: Container(
                  alignment: Alignment.center,
                  child: Text(
                    "I-Admit",
                    style: TextStyle(
                      color: Color(0xFFab0800),
                      fontSize: 100,
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0, right: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        """
1. Pumunta sa ospital o sa isang COVID-19 isolation area

2. Kung ayaw magpa-admit, sabihan ang Regional Epidemiological Surveillance Unit

Para sa DOKTOR:""",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text("""
1. Kumuha ng dugo, nasopharyngal swab,  oropharyngeal swab at lower respiratory tract sample kung maaari
2. Tingnan ang CPG""", style: TextStyle(fontSize: 18)),
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
                        style: TextStyle(color: Color(0xff3f9d2f)),
                      ),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      borderSide: BorderSide(color: Color(0xff3f9d2f)),
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
