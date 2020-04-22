import 'package:flutter/material.dart';

class PUIScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfcb9b8),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50.0),
              Text("PUI Screen"),
              SizedBox(height: 50.0),
              Container(
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
                    Navigator.of(context).pushReplacementNamed('/AdmitScreen');
                  },
                  borderSide: BorderSide(
                    color: Color(0xFF3f9d2f),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
              ),
              SizedBox(height: 50.0),
              Container(
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
            ],
          ),
        ),
      ),
    );
  }
}
