import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Mystack(),
  ));
}

class Mystack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text('Grid View'),),
      body: Stack(
        children: [
          Container(
            height: 400,
            width: 400,
            color: Colors.green,
          ),
          Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ),
          Positioned(
            right: 30,
            bottom: 10,
            child: Container(
              height: 40,
              width: 40,
              color: Colors.yellow,
            ),
          )
        ],
      ),
    );
  }
}
