import 'package:flutter/material.dart';
import 'package:juan_tracker/questions/admit_screen.dart';
import 'package:juan_tracker/questions/adult_child_screen.dart';
import 'package:juan_tracker/questions/bad_symptoms_screen.dart';
import 'package:juan_tracker/questions/call_screen.dart';
import 'package:juan_tracker/questions/day_exposed_screen.dart';
import 'package:juan_tracker/questions/exposure_screen.dart';
import 'package:juan_tracker/questions/home_isolation_screen.dart';
import 'package:juan_tracker/questions/introduction_screen.dart';
import 'package:juan_tracker/questions/not_suspect_screen.dart';
import 'package:juan_tracker/questions/pui_screen.dart';
import 'package:juan_tracker/questions/pum_screen.dart';
import 'package:juan_tracker/questions/symptoms_screen.dart';
import 'package:juan_tracker/screens/choose_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChooseUser(),
      routes: <String, WidgetBuilder>{
        '/IntroductionScreen': (BuildContext context) => IntroductionScreen(),
        '/SymptomsScreen': (BuildContext context) => SymptomsScreen(),
        '/ExposureScreen': (BuildContext context) => ExposureScreen(),
        '/DayExposedScreen': (BuildContext context) => DayExposedScreen(),
        '/PUIScreen': (BuildContext context) => PUIScreen(),
        '/AdmitScreen': (BuildContext context) => AdmitScreen(),
        '/PUMScreen': (BuildContext context) => PUMScreen(),
        '/BadSymptomsScreen': (BuildContext context) => BadSymptomsScreen(),
        '/NotSuspectScreen': (BuildContext context) => NotSuspectScreen(),
        '/AdultChildScreen': (BuildContext context) => AdultChildScreen(),
        '/HomeIsolationScreen': (BuildContext context) => HomeIsolationScreen(),
        '/CallScreen': (BuildContext context) => CallScreen(),
      },
    );
  }
}
