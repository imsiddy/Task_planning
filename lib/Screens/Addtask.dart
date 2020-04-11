import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:task_planner/Screens/Listofwork.dart';

class Addtsk extends StatefulWidget {
  @override
  _AddtskState createState() => _AddtskState();
}

String _title;
String _title1;
DateTime date;
final _formKey = GlobalKey<FormState>();
final _formKey1 = GlobalKey<FormState>();
FocusNode myFocusNode = new FocusNode();
FocusNode myFocusNode1 = new FocusNode();

class _AddtskState extends State<Addtsk> {
  bool validateAndSave() {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      //createRecord();
      // Navigator.push(context, MaterialPageRoute(builder: (context) => Secondpage()));
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: _formKey,
          child: Container(
            color: Color(0xFFFFF9EC),
            child: CustomScrollView(
              slivers: <Widget>[
                SliverAppBar(
                  iconTheme: IconThemeData(
                    color: Colors.black, //change your color here
                  ),
                  backgroundColor: const Color(0xFFF9BE7C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      bottom: Radius.circular(30),
                    ),
                  ),
                  // title: Appbr(),
                  pinned: true,
                  expandedHeight: ScreenUtil().setHeight(800),
                  flexibleSpace: FlexibleSpaceBar(
                    background: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: ScreenUtil().setWidth(60)),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: ScreenUtil().setHeight(200),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Create new task",
                              style: TextStyle(
                                  fontSize: ScreenUtil().setSp(90),
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top:ScreenUtil().setSp(25)),
                            child: TextFormField(
                              focusNode: myFocusNode,
                              style: TextStyle(
                                color: Colors.black,
                              ),
                              // maxLines: 2,
                              textCapitalization: TextCapitalization.sentences,
                              decoration: InputDecoration(
                                contentPadding : EdgeInsets.zero,
                                  labelText: 'Title',
                                  labelStyle: TextStyle(
                                      fontSize: ScreenUtil().setSp(50),
                                      color: myFocusNode.hasFocus
                                          ? Colors.black
                                          : Colors.black)),
                              onSaved: (String value) {
                                if (_title == null) {
                                  _title = value;
                                } else {
                                  value = _title;
                                }
                              },
                              validator: (value) => value.isEmpty
                                  ? 'Please enter Title of task'
                                  : null,
                            ),
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                width: MediaQuery.of(context).size.width / 1.7,
                                child: TextFormField(
                                  enabled: false,
                                  focusNode: myFocusNode1,
                                  style: TextStyle(
                                    color: Colors.black,
                                  ),
                                  textCapitalization:
                                      TextCapitalization.sentences,
                                  decoration: InputDecoration(
                                      labelText: 'data',
                                      labelStyle: TextStyle(
                                        height: 4,
                                          fontSize: ScreenUtil().setSp(50),
                                          color: myFocusNode.hasFocus
                                              ? Colors.black
                                              : Colors.black)),
                                  onSaved: (String value) {
                                    if (_title1 == null) {
                                      _title1 = value;
                                    } else {
                                      value = _title1;
                                    }
                                  },
                                  validator: (value) => value.isEmpty
                                      ? 'Please enter Title of task'
                                      : null,
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: SizedBox(),
                              ),
                              GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Addtsk(),
                                          ),
                                        );
                                      },
                                      child: Padding(
                                        padding: EdgeInsets.only(top:ScreenUtil().setHeight(60)),
                                        child: CircleAvatar(
                                          backgroundColor: Color(0xFF309397),
                                          radius: ScreenUtil().setSp(80),
                                          child: Icon(
                                            Icons.calendar_today,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    )
                            ],
                          )
                        ],
                      ),
                    ),
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
                                            builder: (context) => Addtsk(),
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
      ),
    );
  }
}

class Dataent extends StatefulWidget {
  @override
  _DataentState createState() => _DataentState();
}

class _DataentState extends State<Dataent> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: ScreenUtil().setWidth(30)),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: ScreenUtil().setHeight(200),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Create new task",
                style: TextStyle(
                    fontSize: ScreenUtil().setSp(90),
                    fontWeight: FontWeight.w500),
              ),
            ),
            TextFormField(
              textCapitalization: TextCapitalization.sentences,
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              onSaved: (String value) {
                if (_title == null) {
                  _title = value;
                } else {
                  value = _title;
                }
              },
              autofocus: true,
              validator: (value) =>
                  value.isEmpty ? 'Locality is required' : null,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: RaisedButton(
                    // onPressed: validateAndSave,
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                    elevation: 4.0,
                    color: Colors.blue[700],
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(30.0)),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
