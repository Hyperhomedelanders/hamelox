import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

void main(){
  runApp(Myanon());
}

class Myanon extends StatelessWidget {
  const Myanon({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: mynone(),
    );
  }
}
class mynone extends StatefulWidget {
  const mynone({super.key});

  @override
  State<mynone> createState() => _mynoneState();
}

class _mynoneState extends State<mynone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black12,
      body: Center(
        child: ListView(
          children: [
            SizedBox(width: 50,height: 50,),
            Card(color: Colors.black,
              elevation: 10,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(20)
                  )
              ),
              child: Column(
                 children:[

                   Image.network("https://s6.uupload.ir/files/imagesضصث_m23f.png",width: 200,height: 400,),
                   Text("Anonymous Ai",style: TextStyle(color: Colors.green,fontFamily: "Dast2"),)
]
              ),
            )
          ],
        ),
      ),
    );
  }
}
