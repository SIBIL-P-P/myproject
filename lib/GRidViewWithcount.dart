import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridcountt(),));
}
class Gridcountt extends StatelessWidget {
  var images = [
    'assets/icons/icon.flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon.flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    // 'assets/icons/icon2flt.png'
  ];
  var colors=[Colors.yellow,Colors.green,Colors.deepPurple,
    Colors.yellow,Colors.green,Colors.deepPurple,
    Colors.yellow,Colors.green,Colors.deepPurple,
    Colors.yellow,Colors.green,Colors.deepPurple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(10, (index) {
          return Card(
            color: colors[index],
            child: Row(children: const [
              Icon( Icons.home,size: 50,),
              Text('HEART SHAKER'),
            ],)
          );

        }
        ),
      ),
    );
  }
}
