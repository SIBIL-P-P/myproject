import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Grid_with_builder(),));
}
class Grid_with_builder extends StatelessWidget{
  var images=['assets/icons/icon.flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png'];
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(),
    body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context,index){
          return Card(
            child: Image.asset(images[index]),
          );
        },
    itemCount: images.length,
    ),
  )
  ;
  }

}