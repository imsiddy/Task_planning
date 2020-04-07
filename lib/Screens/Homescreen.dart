import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        // appBar: AppBar(backgroundColor: Color(0xFFF9BE7C),leading: Icon(Icons.menu),),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: Color(0xFFFFF9EC),
          child: Column(
            children: <Widget>[
              Container(
                  color: Color(0xFFF9BE7C),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Row(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Icon(Icons.menu),
                        ),
                        Flexible(
                            fit: FlexFit.tight,
                            child:
                                SizedBox()), // Set both icon to each end of the container
                        Align(
                          alignment: Alignment.topRight,
                          child: Icon(
                            Icons.search,
                            size: ScreenUtil().setSp(60),
                          ),
                        )
                      ],
                    ),
                  )),
              Container(
                  height: ScreenUtil().setHeight(200),
                  decoration: BoxDecoration(
                      color: const Color(0xFFF9BE7C),
                      borderRadius: BorderRadius.only(
                        bottomLeft:  Radius.circular(ScreenUtil().setSp(50)),
                        bottomRight: Radius.circular(ScreenUtil().setSp(50)),
                      )),
                  child: Center(
                    child: Text("Hi modal sheet"),
                  )),
              Container(
                  color: const Color(0xFFF9EC), child: Text("datamust be here"))
            ],
          ),
        ),
      ),
    );
  }
}
