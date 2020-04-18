import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_planner/Screens/Addtask.dart';
import 'package:task_planner/Screens/Appbar.dart';
import 'package:task_planner/Screens/Appbarbd.dart';
import 'package:task_planner/Screens/Listofwork.dart';
import 'package:task_planner/Screens/Tasks.dart';

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
        body: Container(
          color: Color(0xFFFFF9EC),
          child: CustomScrollView(
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
                expandedHeight: ScreenUtil().setHeight(550),
                flexibleSpace: FlexibleSpaceBar(
                  background: Appbd(),
                ),
              ),
              SliverList(
                delegate: SliverChildListDelegate(
                  <Widget>[
                    // DisplayListView(),
                    Padding(
                      padding: EdgeInsets.all(ScreenUtil().setSp(30)),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: ScreenUtil().setWidth(25),
                            right: ScreenUtil().setWidth(25),
                            top: ScreenUtil().setWidth(25)),
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Text(
                                    "My tasks",
                                    style: TextStyle(
                                      fontSize: ScreenUtil().setSp(70),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Flexible(
                                      fit: FlexFit.tight, child: SizedBox()),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Tasklist(),
                                        ),
                                      );
                                    },
                                    child: CircleAvatar(
                                      backgroundColor: Color(0xFF309397),
                                      radius: ScreenUtil().setSp(80),
                                      child: Icon(
                                        Icons.calendar_today,
                                        color: Colors.white,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              DisplayListView(),
                            ],
                          ),
                        ),
                      ),
                    )
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
