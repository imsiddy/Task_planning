import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class Appbr extends StatefulWidget {
  Appbr({Key key}) : super(key: key);

  @override
  _AppbrState createState() => _AppbrState();
}

class _AppbrState extends State<Appbr> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(Icons.menu,color: Colors.black,),
          ),

          Flexible(
            fit: FlexFit.tight,
            child: SizedBox(),
          ),// Set both icon to each end of the container

          Text("Name"),
            Flexible(
            fit: FlexFit.tight,
            child: SizedBox(),
          ),

          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.search,
              size: ScreenUtil().setSp(60),color: Colors.black,
            ),
          )
        ],
      ),
    );
  }
}