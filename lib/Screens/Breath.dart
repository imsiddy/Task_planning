import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:task_planner/Screens/Experiment.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
          width: MediaQuery.of(context).size.width, child: CupertinoBreathe()),
    );
  }
}

int sec = 3;

class CupertinoBreathe extends StatefulWidget {
  @override
  _CupertinoBreatheState createState() => _CupertinoBreatheState();
}

class _CupertinoBreatheState extends State<CupertinoBreathe>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    // Timer(Duration(seconds: 10), (){ Visibility(visible: true, child: MaterialBreathe(),);});
    _controller = AnimationController(
      duration: Duration(seconds: sec),
      vsync: this,
    )..addStatusListener(
      (status) {
        if (status == AnimationStatus.completed) {
          _controller.reverse();
        }
        if (status == AnimationStatus.dismissed) {
          _controller.forward();
        }
      },
    );
    // ..repeat(reverse: true);
    // _controller.addStatusListener(
    //   (status) {
    //     if (status == AnimationStatus.completed) {
    //       _controller.reverse();
    //     }
    //     if (status == AnimationStatus.dismissed) {
    //       _controller.forward();
    //     }
    //   },
    // );
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
    final radius = (size.shortestSide * 0.25) * animation.value;
    for (int index = 0; index < count; index++) {
      final indexAngle = (index * math.pi / count * 2);
      final angle = indexAngle + (math.pi * 1.5 * animation.value);
      final offset = Offset(math.sin(angle), math.cos(angle)) * radius * 0.985;
      canvas.drawCircle(center + offset * animation.value, radius, circlePaint);
    }
  }

  @override
  bool shouldRepaint(_BreathePainter oldDelegate) =>
      animation != oldDelegate.animation;
}
