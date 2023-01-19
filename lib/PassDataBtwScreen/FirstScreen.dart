//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:myproject/PassDataBtwScreen/Secondscreen.dart';
// import 'package:myproject/PassDataBtwScreen/dummydata.dart';
//
// void main(){
//   runApp(MaterialApp(
//     home:First_screen() ,
//     routes: {
//       "Second": (context)=>Second_screen(),
//     },
//   ));
// }
//
// class First_screen  extends StatelessWidget{
//   get product => null;
//
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Product List'),),
//       body: ListView(
//         padding: EdgeInsets.all(15),
//         children: dummyproducts.map((data) => TextButton(onPressed: ()=>gotonext(context,product['id']),
//             child:Text(data['name']) )).toList(),
//       ),
//     );
//   }
//
//    void gotonext(BuildContext context, product) {
//     Navigator.of(context).pushNamed('second',arguments: product);
//   }
// }
import 'package:flutter/material.dart';


import 'Secondscreen.dart';
import 'dummydata.dart';


void main() {
  runApp( MaterialApp(
    home: ProductScreen(),
    routes: {
      "secondone" : (context) => Productlist(),
    },
  ));
}

class ProductScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(15),
        children: dummyproducts.map((product) {
          return TextButton(
              onPressed:() => gotonext(context, product["id"]),
              child: Text("${product["name"]}"));
        }).toList(),
      ),
    );
  }

  void gotonext(BuildContext context, product) {
    Navigator.of(context).pushNamed("secondone", arguments: product);
  }
}