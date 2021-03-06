import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_planner/Screens/calexample.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:task_planner/Screens/Addtask.dart';
import 'package:calendar_strip/calendar_strip.dart';

class Tasklist extends StatefulWidget {
  Tasklist({Key key}) : super(key: key);

  @override
  _TasklistState createState() => _TasklistState();
}

// class _TasklistState extends State<Tasklist> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: Icon(
//             Icons.arrow_back_ios,
//             color: Colors.black,
//           ),
//           onPressed: () {
//             Navigator.pop(context);
//           },
//         ),
//         backgroundColor: Color(0xFFFFF9EC),
//         elevation: 0,
//       ),
//       body: ListView(
//         children: <Widget>[
//           Container(
//             height: MediaQuery.of(context).size.height,
//             color: Color(0xFFFFF9EC),
//             child: Column(
//               children: <Widget>[
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: ScreenUtil().setWidth(60),
//                       vertical: ScreenUtil().setHeight(80)),
//                   child: Row(
//                     children: <Widget>[
//                       Text(
//                         "Today",
//                         style: TextStyle(
//                             fontSize: ScreenUtil().setSp(100),
//                             fontWeight: FontWeight.bold),
//                       ),
//                       Flexible(fit: FlexFit.tight, child: SizedBox()),
//                       RaisedButton(
//                         shape: RoundedRectangleBorder(
//                           borderRadius: new BorderRadius.circular(100.0),
//                         ),
//                         child: Padding(
//                           padding: EdgeInsets.symmetric(vertical: ScreenUtil().setHeight(20),horizontal: ScreenUtil().setWidth(20)),
//                           child: Text("Add Task",style:TextStyle(fontSize:ScreenUtil().setSp(60) ),),
//                         ),
//                         color: Color(0xFF309397),
//                         textColor: Colors.white,
//                         onPressed: () {
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(
//                               builder: (context) => Addtsk(),
//                             ),
//                           );
//                         },
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

class _TasklistState extends State<Tasklist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("data",style: TextStyle(color: Colors.black),),
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       Navigator.pop(context);
      //     },
      //   ),
      //   backgroundColor: Color(0xFFFFF9EC),
      //   elevation: 0,
      // ),
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            color: Color(0xFFFFF9EC),
            child: Column(
              children: <Widget>[
                Flexible(
                  flex: 2,
                  child: Padding(
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: ScreenUtil().setHeight(60),
                    //     vertical: ScreenUtil().setHeight(80)),
                    padding: EdgeInsets.only(
                        top: ScreenUtil().setHeight(60),
                        left: ScreenUtil().setHeight(80),
                        right: ScreenUtil().setHeight(80)),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Today",
                          style: TextStyle(
                              fontSize: ScreenUtil().setSp(100),
                              fontWeight: FontWeight.bold),
                        ),
                        Flexible(fit: FlexFit.tight, child: SizedBox()),
                        RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(100.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: ScreenUtil().setHeight(20),
                                horizontal: ScreenUtil().setWidth(20)),
                            child: Text(
                              "Add Task",
                              style:
                                  TextStyle(fontSize: ScreenUtil().setSp(60)),
                            ),
                          ),
                          color: Color(0xFF309397),
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Addtsk(),
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ),
                Flexible(
                  flex: 10,
                  fit: FlexFit.loose,
                  child: Container(
                    child: MyHomePage(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
