import 'dart:async';

import 'package:flutter/material.dart';


import 'GRidViewWithcount.dart';
import 'GridWithBuilder.dart';
import 'gridview.dart';
import 'home.dart';
import 'list.dart';
import 'listview.custom.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.blue),
    debugShowCheckedModeBanner: false,
    home: Splashscreen(),
  ));
}

class Splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SplashscreenState();

}

class _SplashscreenState extends State{
  @override
  void initState() {

    super.initState();
    Timer(const Duration(seconds: 4), ()
    { Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Gridcountt() ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ROYAL ENFIELD "),),

      body: Container(
        // color: Colors.lightGreen,
        // decoration:  const BoxDecoration(
        //
        //   image: DecorationImage(
        //     fit: BoxFit.cover,
        //       image:NetworkImage( "https://media.istockphoto.com/id/476098860/vector/wonderful-morning-in-the-blue-mountains.jpg?s=612x612&w=0&k=20&c=0nuLvsWKXPReu01RvbXTKIwlUYxOQvoXD_qVBrsapxc="))
        // ),
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //   begin:Alignment.bottomCenter ,
          //     end: Alignment.topCenter,
          //     colors: [Colors.green,
          //   Colors.blue,
          //   Colors.yellow
          // ])
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/icon2flt.png', height: 200, width: 200,),

              const Text(
                'RIDER MANIA',
                style: TextStyle(fontSize: 50,
                    fontStyle: FontStyle.italic,
                    color: Colors.green),
              ),
            ],
          ),
        ),
      ),
    );
  }
}










