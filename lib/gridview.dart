import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Gridviewww extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2
      ,
      crossAxisSpacing: 10,
      mainAxisSpacing: 10),
          children: const [
            Image(image: AssetImage('assets/icons/icon2flt.png'),),
            Image(image: AssetImage('assets/icons/icon2flt.png'),),
            Image(image: AssetImage('assets/icons/icon2flt.png'),),
            Image(image: AssetImage('assets/icons/icon2flt.png'),),
            Image(image: AssetImage('assets/icons/icon2flt.png'),),
            Image(image: AssetImage('assets/icons/icon2flt.png'),),
            Image(image: AssetImage('assets/icons/icon2flt.png'),),
            Image(image: AssetImage('assets/icons/icon2flt.png'),),

        ],

      )

    );
  }

}