import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
          child: Container(
            height: 300.0,
            color: Colors.transparent,
            child: new Container(
                decoration: new BoxDecoration(
                    color : const Color(0xFFF9BE7C),
                    borderRadius: new BorderRadius.only(
                      bottomLeft: const Radius.circular(40.0),
                      bottomRight: const Radius.circular(40.0),
                    )),
                child: new Center(
                  child: new Text("Hi modal sheet"),
                )),

            // child: Align(
            //     alignment: Alignment.center, child: Text("Data must be here")),
          ),
        ),
      ),
    );
  }
}
