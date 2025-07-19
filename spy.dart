import 'package:flutter/material.dart';
import 'dart:math';
import 'package:lottie/lottie.dart';
void main() => runApp(MyAppr());

class MyAppr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Eye3D(),
    );
  }
}

class Eye3D extends StatefulWidget {
  @override
  _Eye3DState createState() => _Eye3DState();
}

class _Eye3DState extends State<Eye3D> {
  Offset pupilOffset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            pupilOffset = details.localPosition;
          });
        },
        onPanEnd: (_) => setState(() => pupilOffset = Offset.zero),
        child: Center(
         child:  Lottie.asset("assets/Animation/Animation - 171747913020176.mp4",width: 10,height: 10),
          ),
        ),

    );
  }
}

