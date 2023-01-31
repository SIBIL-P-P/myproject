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
      debugShowCheckedModeBanner: false,
    );
  }
}

class NeumorphicDesign extends StatelessWidget {
  const NeumorphicDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: NeumorphicText(
          " Flutter",
          style: const NeumorphicStyle(
            depth: 6,
            intensity: 0.99,
            surfaceIntensity: 1,
            color: Colors.blue, //customize color here
          ),
          textStyle: NeumorphicTextStyle(
            fontSize: 150, //customize size here

            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
    );
  }
}
