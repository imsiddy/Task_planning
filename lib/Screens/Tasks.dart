import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:velocity_x/velocity_x.dart';

class Tasklist extends StatefulWidget {
  Tasklist({Key key}) : super(key: key);

  @override
  _TasklistState createState() => _TasklistState();
}

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: Color(0xFFFFF9EC),
        elevation: 0,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xFFFFF9EC),
            child: Container(),
          ),
        ],
      ),
    );
  }
}
