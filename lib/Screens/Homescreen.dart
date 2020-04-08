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
                  height: ScreenUtil().setHeight(600),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF9BE7C),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(ScreenUtil().setSp(100)),
                      bottomRight: Radius.circular(ScreenUtil().setSp(100)),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      Padding(
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
                      ),
                      Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width / 3,
                              child: CircleAvatar(
                                radius: ScreenUtil().setSp(140),
                                backgroundImage: NetworkImage(
                                    "https://www.shutterstock.com/image-photo/portrait-smiling-red-haired-millennial-man-1194497251"),
                                // child: Image.asset('assets/dsc_0072.JPG',height: 200,width: 300),
                              ),
                            ),
                            // Container(
                            //   width: 100.0,
                            //   height: 100.0,
                            //   decoration: new BoxDecoration(
                            //     shape: BoxShape.circle,
                            //     image: new DecorationImage(
                            //       fit: BoxFit.fill,
                            //       image: NetworkImage("https://i.imgur.com/BoN9kdC.png"),
                            //     ),
                            //   ),
                            // ),
                            Expanded(
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
                                          style: TextStyle(
                                              fontSize: ScreenUtil().setSp(60)),
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: EdgeInsets.all(ScreenUtil().setSp(30)),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("My Tasks"),
                          Flexible(fit: FlexFit.tight, child: SizedBox()),
                          FlatButton(
                            onPressed: null,
                            child: null,
                            shape: RoundedRectangleBorder(
                                borderRadius: new BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red)),
                          ),
                        ],
                      ),
                    ],
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
