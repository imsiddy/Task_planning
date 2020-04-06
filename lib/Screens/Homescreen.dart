import 'package:flutter/material.dart';

class HomeScr extends StatefulWidget {
  HomeScr({Key key}) : super(key: key);

  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Align(
              alignment: Alignment.center, child: Text("Data must be here")),
        ),
      ),
    );
  }
}
