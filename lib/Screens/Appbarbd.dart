import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Appbd extends StatefulWidget {
  Appbd({Key key}) : super(key: key);

  @override
  _AppbdState createState() => _AppbdState();
}

class _AppbdState extends State<Appbd> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: ScreenUtil().setHeight(50)),
      child: Container(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Row(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width / 3,
                child: Center(
                  child: CircleAvatar(
                    radius: ScreenUtil().setWidth(140),

                    // backgroundImage: NetworkImage(
                    //     "https://image.shutterstock.com/image-photo/beautiful-water-drop-on-dandelion-260nw-789676552.jpg"),
                    backgroundImage: ExactAssetImage('assets/dsc_0072.JPG',scale: 1),
                    // child: Image.asset('assets/dsc_0072.JPG',height: 250,width: 400),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                      left: ScreenUtil().setWidth(20),
                      top: ScreenUtil().setHeight(130)),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Name",
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(80),
                                  fontWeight: FontWeight.bold),
                            )),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Position',
                              style: TextStyle(fontSize: ScreenUtil().setSp(60)),
                            )),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}