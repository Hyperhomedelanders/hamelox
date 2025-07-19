import 'dart:math';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:lottie/lottie.dart';
import 'Homepanel.dart';
import 'package:teledart/teledart.dart';
import 'package:teledart/model.dart';
import 'package:teledart/telegram.dart';
import 'main.dart';
import 'getapp.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_side_menu/flutter_side_menu.dart';
import 'package:easy_sidemenu/easy_sidemenu.dart';
class Myapps extends StatelessWidget {
  const Myapps({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home:VpnScreen() ,
    );
  }
}

class VpnScreen extends StatefulWidget {
  const VpnScreen({super.key});

  @override
  State<VpnScreen> createState() => _VpnScreenState();
}
void main() async {
  var BOT_TOKEN = '7985314212:AAHZkfbj-6IA6eBG4dFpyV-lwiql78SjJ-g';
  var username  = "amazingteledartinfobot";
  final Seledart = TeleDart(BOT_TOKEN, Event("@$username"));
  Seledart.start();
  Seledart.onCommand("start").listen((message)async{
    await Seledart.sendMessage(913206265, "Hi CONECT TO APP");
  });


}


class _VpnScreenState extends State<VpnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body:Center(
        child: Column(
          children: [
            SingleChildScrollView(
              child: Expanded(
                child: Container(
                  width: 600,
                  height: 910,
                  color: Colors.black,

                  child:Column(children: [
                    SingleChildScrollView(
                      child: Container(
                        width: 100,
                        height: 100,
                        child: Lottie.asset("assets/Animation/rh.json",width: 40,height: 40,backgroundLoading: true) ,
                          decoration: BoxDecoration(
                             
                              borderRadius: BorderRadius.only(bottomRight: Radius.circular(40),bottomLeft: Radius.circular(40)),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0,4),
                                  blurRadius: 10,
                                  spreadRadius: 2,
                                  color: Colors.green.withOpacity(1  ),
                                )
                              ]
                          ),




                      ),
                    ),
                    Center(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [


                          Padding(padding: EdgeInsets.all(20)),

                          Padding(padding: EdgeInsets.all(90)),

                          AnimatedTextKit(isRepeatingAnimation: false,animatedTexts: [

                            TyperAnimatedText("Telegram AI Robot"
                                      
                                ,curve: Curves.linearToEaseOut,
                                textStyle: TextStyle(color:Colors.green,fontSize:25,fontFamily: "Dast2"),speed: Duration(microseconds: 200000)),
                           TypewriterAnimatedText('Message Pro ',textStyle: TextStyle(fontSize: 25,color: Colors.green,fontFamily:'Dast2'),speed:Duration(milliseconds: 200),cursor: " AI",curve: Curves.linearToEaseOut,),
                            TypewriterAnimatedText('Best Panel',textStyle: TextStyle(fontSize: 25,color: Colors.green,fontFamily:'Dast2'),speed:Duration(milliseconds: 200),cursor: " AI",curve: Curves.linearToEaseOut,),
                            TypewriterAnimatedText(' Upload ',textStyle: TextStyle(fontSize: 25,color: Colors.green,fontFamily:'Dast2'),speed:Duration(milliseconds: 200),cursor: " AI",curve: Curves.linearToEaseOut,)
                          ],),

                         Padding(padding: EdgeInsets.all(200)),
                          SingleChildScrollView(child: Column(children:[
                            AnimatedButton(text: "Start AI",backgroundColor: Colors.greenAccent,borderRadius: 20,width:130,height: 40 ,textStyle: TextStyle(fontFamily: "Dast2"),onPress: (){
                              main();
                              Navigator.of(context).push(MaterialPageRoute(builder:(context) =>Homepanel()));

                            },


                              ),


                            ]
                          ),
                          )

                      ]
                      ),
                    ),

                  )
                  ]
                  ),
                ),
              ),
            )
          ],
        ),
      )
    );
  }
}



 