import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class DataSat extends StatefulWidget {
  DataSat({Key key}) : super(key: key);

  @override
  _DataSatState createState() => _DataSatState();
}

class _DataSatState extends State<DataSat> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        width: 1080, height: 1920, allowFontScaling: false);
    String count = "1";
    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: <Widget>[
              RaisedButton(onPressed: () {
                count = "1";
              })
            ],
          ),
          Container(
            // child : DisplayListView(),
            child: if () {
              
            },
          )
        ],
      ),
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
