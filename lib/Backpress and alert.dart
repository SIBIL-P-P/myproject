import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Alert_with_backpress(),
  ));
}

class Alert_with_backpress extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future<bool> showAlert() async {
      return await showDialog(
          context: context,
          builder: (context) =>  AlertDialog(
                title: Text('Exit!!!'),
                content: Text('Do You Want To Exit??'),
                actions: [
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(false);
                      },
                      child: Text('No')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pop(true);
                      },
                      child: Text('Yes'))
                ],
              ));
    }

    return WillPopScope(
      onWillPop: showAlert,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Alert'),
        ),
        body: const Center(
          child: Text('Press Back Button To Exit '),
        ),
      ),
    );
  }
}
