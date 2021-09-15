import 'package:flutter/material.dart';
import 'package:task_planner/Screens/Breath.dart';
import 'package:task_planner/Screens/Data.dart';
import 'package:task_planner/Screens/Experiment.dart';
import 'package:task_planner/Screens/Tasks.dart';
import 'package:task_planner/Screens/calexample.dart';
import 'Screens/Homedemo.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: true),
          child: child),
      debugShowCheckedModeBanner: false,
      //  home: HomeScr(),
      // home: Container(child: MyHomePage()),
      home: DataSat(),
    );
  }
}
