import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Neumorphic2(),
  ));
}

class Neumorphic2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.concave,
                    boxShape:
                        NeumorphicBoxShape.roundRect(BorderRadius.circular(60)),
                    depth: 20,
                    intensity: 0.99,
                    surfaceIntensity: 1,
                    lightSource: LightSource.right,
                    color: Colors.red),
                child: Container(
                  height: 200,
                  width: 200,
                  padding: const EdgeInsets.all(9),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(50),
                      // boxShadow: const [
                      //   BoxShadow(
                      //     color: Color(0xFFBEBEBE),
                      //     offset: Offset(20,20),
                      //     blurRadius: 6,
                      //     spreadRadius: 1,
                      //   ),
                      //   BoxShadow(
                      //     color: Colors.white,
                      //     offset: Offset(-20, -20),
                      //     blurRadius: 6,
                      //     spreadRadius: 1,
                      //   )
                      // ]
                  ),
                )
            )
        )
    );
  }
}
