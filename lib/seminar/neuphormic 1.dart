import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: NeumorphicDesign(),
    );
  }
}

class NeumorphicDesign extends StatelessWidget {
  const NeumorphicDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: 200,
        width: 200,
        padding: const EdgeInsets.all(9),
        child: Center(
          child: Image.asset("assets/images/container.gif"),

          // Icon(
          //   Icons.add_a_photo,size: 80,color: Colors.green,)
        ),
      ),
    ));
  }
}
