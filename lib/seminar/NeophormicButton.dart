
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Neumorphic2(),
  ));
}

class Neumorphic2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
    Center(child:
    Neumorphic(
      style: NeumorphicStyle(
          shape: NeumorphicShape.concave,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(60)),
          depth: 8,
          intensity: 0.78,

          lightSource: LightSource.topLeft,
          color: Colors.grey
      ),
      child: Image.asset("assets/images/radio.gif"),
    )
    )
    );
  }
}











































//
//
// void main(){
//   runApp(const MaterialApp(home: NeumorphismPage(),));
//
// }
// class NeumorphismPage extends StatefulWidget {
//   const NeumorphismPage({Key? key}) : super(key: key);
//
//   @override
//   State<NeumorphismPage> createState() => _NeumorphismPageState();
// }
//
// class _NeumorphismPageState extends State<NeumorphismPage> {
// // Boolean to check whether the
// // button is elevated or not.
//   bool _isElevated = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // Providing background
//       // color to our Scaffold
//       backgroundColor: Colors.grey,
//       body: Center(
//         // Gesture Detector to detect taps
//         child: GestureDetector(
//           onTap: () {
//             setState(() {
//               _isElevated = !_isElevated;
//             });
//           },
//           child: AnimatedContainer(
//             child: Image.asset(
//               "assets/images/radio.gif",
//               scale: 4,
//               height: 40,
//               width: 40,
//             ),
//
//             // Providing duration parameter
//             // to create animation
//             duration:  const Duration(
//               milliseconds: 200,
//             ),
//             height: 200,
//             width: 200,
//
//
//           ),
//         ),
//       ),
//     );
//   }
// }
