// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// void main(){
//   runApp(MaterialApp(home: Gridcountt(),));
// }
// class Gridcountt extends StatelessWidget {
//   var images = [
//     'assets/icons/icon.flt.png',
//     'assets/icons/icon2flt.png',
//     'assets/icons/icon2flt.png',
//     'assets/icons/icon2flt.png',
//     'assets/icons/icon2flt.png',
//     'assets/icons/icon.flt.png',
//     'assets/icons/icon2flt.png',
//     'assets/icons/icon2flt.png',
//     'assets/icons/icon2flt.png',
//     // 'assets/icons/icon2flt.png'
//   ];
//   var colors=[Colors.yellow,Colors.green,Colors.deepPurple,
//     Colors.yellow,Colors.green,Colors.deepPurple,
//     Colors.yellow,Colors.green,Colors.deepPurple,
//     Colors.yellow,Colors.green,Colors.deepPurple];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: GridView.count(
//         crossAxisCount: 2,
//         mainAxisSpacing: 10,
//         crossAxisSpacing: 10,
//         children: List.generate(10, (index) {
//           return Card(
//             color: colors[index],
//             child: Column (
//
//               children: const [
//               Icon( Icons.home,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.notification_important_outlined,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.camera_alt_outlined,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.stars_rounded,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.line_axis,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.save_sharp,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.call,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.email,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.note_alt_outlined,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.keyboard_voice_sharp,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.note_alt_outlined,size: 30,),
//               Text('HEART SHAKER'),
//               Icon( Icons.dangerous_outlined,size: 30,),
//               Text('HEART SHAKER'),
//
//             ],
//             )
//
//
//
//           );
//
//         }
//
//         ),
//       ),
//
//     );
//   }
// }
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Gridwbuilder(),
  ));
}

class Gridwbuilder extends StatelessWidget {
  var iccons = [
    Icons.home,
    Icons.notification_important_outlined,
    Icons.linked_camera,
    Icons.stars_rounded,
    Icons.leak_remove_outlined,
    Icons.book_rounded,
    Icons.call,
    Icons.mail,
    Icons.map,
    Icons.select_all_rounded,
    Icons.mic_off,
    Icons.book_outlined
  ];
  var colorrs = [
    Colors.blue,
    Colors.orange,
    Colors.green,
    Colors.pink,
    Colors.deepOrange,
    Colors.blueAccent,
    Colors.purpleAccent,
    Colors.teal,
    Colors.amber,
    Colors.deepOrangeAccent,
    Colors.pinkAccent,
    Colors.lightGreen
  ];

  Gridwbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2.5,
            crossAxisSpacing: 8,
          ),
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)),
              shadowColor: Colors.black45,
              color: colorrs[index],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    iccons[index],
                    color: Colors.black45,
                    size: 40,
                  ),
                  const SizedBox(
                      width: 80,
                      child: Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          "Heart Shaker",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ))
                ],
              ),
            );
          },
          itemCount: iccons.length,
        ),
      ),
    );
  }
}
