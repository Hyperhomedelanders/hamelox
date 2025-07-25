import 'dart:async';
import 'package:get/get.dart'
;
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:primehacl/getapp.dart';
import 'package:primehacl/spy.dart';
import 'package:typewritertext/typewritertext.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:teledart/telegram.dart';
import 'package:swipeable_button_view/swipeable_button_view.dart';
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'getapp.dart';
import 'hero.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Forbers',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'YouHack'),
    );
  }
}



class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.white,
      Colors.white12,
      Colors.green,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 30.0,
      fontFamily: 'Dast2',

    );
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Colors.black,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(children:[
          Padding(padding:  EdgeInsets.all(12)),
          Padding(padding:  EdgeInsets.all(89)),
          SizedBox(
            width: 190,
            height: 200,
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'The Best For Hack',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Speed in startup',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Strong security',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
          ),),
          Padding(padding:  EdgeInsets.all(90)),
          AnimatedButton(
            height: 40,
            width: 200,
            text: 'Free Start',
            textStyle: TextStyle(fontFamily: 'Dast2'),
            isReverse: true,
            selectedTextColor: Colors.black,
            backgroundColor: Colors.blue,
            transitionType: TransitionType.BOTTOM_TO_TOP,
            selectedBackgroundColor: Colors.white,
            borderRadius: 20,
            onPress:() {
              Navigator.of(context).push(MaterialPageRoute(builder:(context) => Myapps()));
            },
          ),
    ]
    ),
      )// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
