import 'package:flutter/material.dart';

class FacilityDashboard extends StatefulWidget {
  @override
  _FacilityDashboardState createState() => _FacilityDashboardState();
}

class _FacilityDashboardState extends State<FacilityDashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Text("Facility Screen"),
      ),
    );
  }
}
