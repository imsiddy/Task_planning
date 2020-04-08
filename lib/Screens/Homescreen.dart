import 'dart:math';

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
        body: ListView(
          children: <Widget>[
            Container(
              // height: MediaQuery.of(context).size.height,
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
                                      "https://github.com/imsiddy/Task_planning/blob/master/assets/dsc_0072.JPG"),

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
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: ScreenUtil().setWidth(20)),
                                  child: Container(
                                    child: Column(
                                      children: <Widget>[
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              "Name",
                                              style: TextStyle(
                                                  fontSize:
                                                      ScreenUtil().setSp(80),
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                              'Position',
                                              style: TextStyle(
                                                  fontSize:
                                                      ScreenUtil().setSp(60)),
                                            )),
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
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                CircleAvatar(
                                  backgroundColor: Color(0xFF309397),
                                  radius: ScreenUtil().setSp(80),
                                  child: Icon(
                                    Icons.calendar_today,
                                    color: Colors.white,
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
    );
  }
}

class ListViewExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      child: DisplayListView(),
    );
  }
}

class ListViewModel {
  final String title;
  final String subtitle;
  final Color color;
  final Icon icon;

  ListViewModel({this.title, this.subtitle, this.color, this.icon});
}

List listViewData = [
  ListViewModel(
    title: "To Do",
    subtitle: "Group Category",
    color: const Color(0xFFE46472),
    icon: Icon(
      Icons.access_time,
      color: Colors.white,
      size: ScreenUtil().setSp(80),
    ),
  ),
  ListViewModel(
    title: "Group",
    subtitle: "Group Category",
    color: const Color(0xFFF9BE7c),
    icon: Icon(
      Icons.pie_chart,
      color: Colors.white,
      size: ScreenUtil().setSp(80),
    ),
  ),
  ListViewModel(
    title: "Group",
    subtitle: "Group Category",
    color: const Color(0xFF6488E4),
    icon: Icon(
      Icons.fast_forward,
      color: Colors.white,
      size: ScreenUtil().setSp(80),
    ),
  ),
];

class DisplayListView extends StatefulWidget {
  @override
  _DisplayListViewState createState() => _DisplayListViewState();
}

class _DisplayListViewState extends State {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: listViewData.length,
      itemBuilder: (context, int i) => Column(
        children: [
          new ListTile(
            leading: new CircleAvatar(
                radius: ScreenUtil().setSp(70),
                backgroundColor: listViewData[i].color,
                child: (listViewData[i].icon)),
            title: new Text(
              listViewData[i].title,
              style: TextStyle(fontWeight: FontWeight.w500),
            ),
            subtitle: new Text(listViewData[i].subtitle),
            onTap: () {},
            onLongPress: () {
              print(
                Text("Long Pressed"),
              );
            },
          ),
        ],
      ),
    );
  }
}
