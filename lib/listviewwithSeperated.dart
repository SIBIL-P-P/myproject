import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List_with_builder(),));
}

class List_with_builder  extends StatelessWidget{

  var name=['name1','name2','name3','name4','name5'];
  var phone=['9090909090','8080808080','7070707070','6060606060','5050505050'];
  var images=['assets/icons/icon.flt.png','assets/icons/icon2flt.png','assets/icons/icon2flt.png','assets/icons/icon2flt.png','assets/icons/icon2flt.png'];
  var colors=[100,200,300,400,500,600];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context ,index){ 
        return Card(
          child: Image.asset(images[index]),
          color: Colors.amberAccent[colors[index]],
        );
      },
          separatorBuilder: (context,index){
        return Divider(thickness: 6,
        color: Colors.black,);
          },
          itemCount: images.length),
    );
  }}