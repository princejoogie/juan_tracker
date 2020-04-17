import 'package:flutter/material.dart';

class ScreeningTab extends StatefulWidget {
  const ScreeningTab({Key key}) : super(key: key);

  @override
  _ScreeningTabState createState() => _ScreeningTabState();
}

class _ScreeningTabState extends State<ScreeningTab> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Screening Tab"),
    );
  }
}
