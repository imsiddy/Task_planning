import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_planner/Screens/Appbar.dart';
import 'package:task_planner/Screens/Appbarbd.dart';
import 'package:task_planner/Screens/Listofwork.dart';

class HomeScr extends StatefulWidget {
  @override
  _HomeScrState createState() => _HomeScrState();
}

class _HomeScrState extends State<HomeScr> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 1920, allowFontScaling: false);
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: const Color(0xFFF9BE7C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              title: Appbr(),
              pinned: true,
              expandedHeight: 210.0,
              flexibleSpace: FlexibleSpaceBar(
                background: Appbd(),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  DisplayListView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}