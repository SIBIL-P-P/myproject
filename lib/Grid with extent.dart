import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Grid_extent(),));
}
class Grid_extent extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 60,
      children: List.generate(80, (index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
              width: 100,
            child: const Image(image: AssetImage("assets/icons/icon.flt.png"),),
          ),
        );
      }),),
    );
  }
  
}