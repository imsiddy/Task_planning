import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:task_planner/Screens/Breath.dart';

class Data extends StatefulWidget {
  @override
  _DataState createState() => _DataState();
}

int count = 0;

class _DataState extends State<Data> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: <Widget>[
        count == 0 ? MaterialBreathe() : CupertinoBreathe(),
        RaisedButton(onPressed: (){
          setState(() {
            if(count == 0){
              count = 1;
              print("Value of Count is 1");
            }
            else{
              count = 0;
              print("Value of Count is 0");
            }
            
            
          });
        })
      ]),
    );
  }
}

int sec = 4;

class MaterialBreathe extends StatefulWidget {
  @override
  _MaterialBreatheState createState() => _MaterialBreatheState();
}

class _MaterialBreatheState extends State<MaterialBreathe>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AspectRatio(
        aspectRatio: 1.0,
        child: CustomPaint(
          painter: _BreathePainter(
              CurvedAnimation(parent: _controller, curve: Curves.ease)),
          size: Size.infinite,
        ),
      ),
    );
  }
}

class _BreathePainter extends CustomPainter {
  _BreathePainter(
    this.animation, {
    this.count = 6,
    Color color = const Color(0xFF61bea2),
  })  : circlePaint = Paint()
          ..color = color
          ..blendMode = BlendMode.screen,
        super(repaint: animation);

  final Animation<double> animation;
  final int count;
  final Paint circlePaint;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final radius = (size.longestSide * 0.25);
    for (int index = 0; index < count; index++) {
      final indexAngle = (index * math.pi / count * 2);
      final angle = indexAngle + (math.pi * 1.5);
      final offset = Offset(math.sin(angle), math.cos(angle)) * radius * 0.985;
      canvas.drawCircle(center + offset, radius, circlePaint);
    }
  }

  @override
  bool shouldRepaint(_BreathePainter oldDelegate) =>
      animation != oldDelegate.animation;
}
