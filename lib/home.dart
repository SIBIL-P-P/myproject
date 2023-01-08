import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Home"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Center(
                child: Text(
              "LOGIN PAGE",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            )),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: " Enter UserName",
                    labelText: "USERNAME",
                    prefixIcon: Icon(Icons.account_box_sharp),
                    border: OutlineInputBorder()),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
              child: TextField(
                decoration: InputDecoration(
                    hintText: " Enter Password",
                    labelText: "PASSWORD",
                    suffixIcon: Icon(Icons.password_outlined),
                    border: OutlineInputBorder()),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Fluttertoast.showToast(
                      msg: "Wrong Password",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 2,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                },
                child: Text("LOGIN")),
            const SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {},
                child: const Text("Not a User?  Register Here")),
          ],
        ));
  }
}
