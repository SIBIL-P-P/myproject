import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home:Alert_with_backpress() ,));
}

class Alert_with_backpress  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return WillPopScope(
      child: Scaffold(
        appBar: AppBar(title: const Text('Alert'),),
        body: const Center(child: Text('Press Back Button To Exit '),),
      ),
    );
  }
}