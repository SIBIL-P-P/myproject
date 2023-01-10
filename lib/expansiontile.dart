import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ExpansionEx(),
      debugShowCheckedModeBanner: false,
      ))
  ;
}
class ExpansionEx extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("Expansion Tile"),
      ),
      body: const ExpansionTile(
        title: Text("Colors"),
        subtitle: Text('Expand this Tile'),
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
            ),
            title: Text('Red'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
            ),
            title: Text('green'),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.yellow,
            ),
            title: Text('yellow'),
          ),
        ],
      ),
    );
  }
}
