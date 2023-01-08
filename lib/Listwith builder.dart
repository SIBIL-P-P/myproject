import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: List_with_builder(),));
}

class List_with_builder  extends StatelessWidget{

  var name=['name1','name2','name3','name4','name5'];
  var phone=['9090909090','8080808080','7070707070','6060606060','5050505050'];
  var images=['assets/icons/icon.flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png',
    'assets/icons/icon2flt.png'];
  var colors=[100,200,300,400,500,600];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("CONTACT BOOK"),
      ),
      body: ListView.builder(
        itemCount: name.length,
          itemBuilder:(BuildContext  context,index){
        return Card(
          color: Colors.green[colors[index]],
          child: ListTile(
          title: Text(name[index]),
          subtitle:Text(phone[index]) ,
          leading:Image(image: AssetImage(images[index])) ,
        ),);
      }),
    );
  }

//   var datas=['item1','item2','item3','item4','item5','item6','item7'];
// var colors=[600,500,300,400,200,800,100];
//
//   @override
//   Widget build(BuildContext context) {
//
//     return Scaffold(
//       appBar: AppBar(title: const Text("LIST WITH BUILDER"),),
//       body: ListView.builder(
//         itemCount: datas.length,
//           itemBuilder: (BuildContext  context,int index){
//             return Container(
//               height: 50,color: Colors.green[colors[index]],
//               //
//               child: Center(child: Text(datas[index]),),
//             );
//       }),
//     );
//   }
//
//
//
//
//
//
//






}