import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'main.dart';
import 'hero.dart';
import 'package:flutter/material.dart';

class dising extends StatefulWidget {
  const dising({super.key});

  @override
  State<dising> createState() => _disingState();
}

class _disingState extends State<dising> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:myss() ,
    );
  }
}
class myss extends StatelessWidget {
  const myss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("hacks-"),
          Lottie.asset("assets/Animation/Animation - 171747913020176.mp4",width: 10,height: 10),
        ],
      ),
    );
  }
}

