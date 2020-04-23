import 'package:flutter/material.dart';

class NotSuspectScreen extends StatelessWidget {
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
              color: Color(0xFF5a5a5a),
              width: 10.0,
            ),
          ),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 4,
                child: Column(
                  children: [
                    SizedBox(height: 20.0),
                    Text(
                      "HINDI SUSPEK",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF5a5a5a),
                      ),
                    ),
                    Text(
                      "Papuntahin sa tamang klinika",
                      style: TextStyle(
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
