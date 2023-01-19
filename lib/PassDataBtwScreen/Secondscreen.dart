// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:myproject/PassDataBtwScreen/dummydata.dart';
//
// class Second_screen  extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     final productid=ModalRoute.of(context)?.settings.arguments;
//     final product=dummyproducts.firstWhere((data) => data['id']==productid);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('products details'),
//
//       ),
//       body: Padding(
//         padding:EdgeInsets.all(20) ,
//         child: Column(
//           children: [
//             Text("${product["id"]}"),
//             Text("${product["name"]}"),
//             Text("${product["Description"]}")
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';


import 'dummydata.dart';

class Productlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    // fetch the id from the previous page
    final productId = ModalRoute.of(context)?.settings.arguments;
    //check the id found in the given list if found fetch all the values corresponding to that id
    final product = dummyproducts.firstWhere((data) => data["id"] == productId);

    return Scaffold(
      appBar: AppBar(
        title: Text('Products Details'),
      ),
      body: Padding(padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(product["image"]),
            Text("${product["id"].toString()}"),
            Text("${product["name"]}"),
            Text("${product["description"]}")
          ],
        ),

      )
      ,
    );
  }
}