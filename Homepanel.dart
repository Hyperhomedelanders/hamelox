import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:primehacl/NEXTANOYN.dart';
import 'hero.dart';
import 'package:lottie/lottie.dart';
import "package:curved_navigation_bar/curved_navigation_bar.dart";
import 'package:flutter_animated_button/flutter_animated_button.dart';
import 'package:get/get.dart';
void main(){
  runApp(Homepanel());
}

class Homepanel extends StatelessWidget {
  const Homepanel({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      color: Colors.black12,
      home: home1(),
    );
  }
}
class home1 extends StatefulWidget {
  const home1({super.key});

  @override
  State<home1> createState() => _home1State();
}
int _curvedindex = 0;
final List<Widget> _pages = [
  Pageone(),
Pageto(),
];
class _home1State extends State<home1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:CurvedNavigationBar(items: [

        Icon(Icons.portrait_outlined,size: 30,color: Colors.white,),
        Icon(Icons.home_filled,size: 30,color: Colors.white,),
        Icon(Icons.settings,size: 30,color: Colors.white,),
      ],
        index: _curvedindex,
        onTap: (index){
        setState(() {
          _curvedindex= index;

        });
        },

        color: Colors.greenAccent,
        buttonBackgroundColor: Colors.black12,
        backgroundColor: Colors.black,
      ) ,
      body: _pages[_curvedindex],
    );
  }
}
class Pageone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ListView(
      children: [
        SizedBox(width: 100,height: 100,),
        CupertinoContextMenu(actions: [
        CupertinoContextMenuAction(child:Text("IN APP TO THE hACKERS NOT PLAY TO THE APPPL"))
        ], child: Image.network("https://s6.uupload.ir/files/nhbd_drvf.jpg"))
      ],
    ),);
  }
}
class Pageto extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("Home"),backgroundColor: Colors.white,titleTextStyle: TextStyle(color: Colors.black,fontFamily: "Dast2",fontSize:20),),
      backgroundColor: Colors.white,
      body:ListView(
        children: [
          Card(
            color: Colors.greenAccent,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(20)
              )
            ),
            child: Row(
              children: [

                Lottie.asset("assets/bot.json",width: 90,height:90,),
                AnimatedTextKit(onTap: (){},totalRepeatCount: 1,animatedTexts: [
                  TyperAnimatedText(" CLICK FOR CREAT BOT",textStyle: TextStyle(fontFamily: "Dast2"))
                ]),
                SizedBox(width: 50,height: 50,)
              ],
            )
          ),
          Card(color: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(20)
                )
            ),
            child:Row(
              children: [
                SizedBox(width: 20,height: 20,),
                Lottie.asset("assets/eys1.json",width: 90,height:90,),
                AnimatedTextKit(onTap: (){
                  Get.offAll(() => Myanon());
                  Get.snackbar(icon:Icon(Icons.adb_outlined,color: Colors.greenAccent,),"Hack Victory!", "Hekrk",);

                },totalRepeatCount: 1,animatedTexts: [
                  TyperAnimatedText(" Create anonymous bot",textStyle: TextStyle(fontFamily: "Dast2",color: Colors.amber,))
                ]),
              ],
            )
          ),
          Card(
            color: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                    Radius.circular(20)
                )
            ),
              child:Row(
                children: [
                  SizedBox(width: 20,height: 20,),
                  Lottie.asset("assets/eys1.json",width: 90,height:90,),
                  AnimatedTextKit(onTap: (){


                  },totalRepeatCount: 1,animatedTexts: [
                    TyperAnimatedText(" An",textStyle: TextStyle(fontFamily: "Dast2",color: Colors.amber,))
                  ]),
                ],
              )
          )

        ],
      )
    );
  }
}

