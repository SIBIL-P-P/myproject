import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main(){
  runApp(MaterialApp(home: MyLottie(),
      debugShowCheckedModeBanner: false,));
}
class MyLottie extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body:
     Center(
       
child: Lottie.asset("assets/animations/115023-bike.json"),

     )

     ,
   );


  }

  
}



