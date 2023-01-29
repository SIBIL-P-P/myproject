import 'package:flutter/material.dart';
import 'package:myproject/signup.dart';

import '../login.dart';



void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: firstinvoice(),
  ));
}

class firstinvoice extends StatelessWidget {
  const firstinvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              // const Padding(padding: EdgeInsets.only(top: 10)),
              // const Center(
              //   child: Text(
              //     '',
              //     style: TextStyle(
              //       fontWeight: FontWeight.bold,
              //       fontSize: 35,
              //     ),
              //   ),
              // ),
              // const Padding(
              //   padding: EdgeInsets.only(top: 20, bottom: 20),
              //   child: Center(
              //     child: Text(
              //       "",
              //       textAlign: TextAlign.center,
              //       style: TextStyle(color: Colors.black45),
              //     ),
              //   ),
              // ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Center(
                  child: Image.network(
                    "data:image/png;base64,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",
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child:
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginForms()));
                      },

                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(90, 90),
                          backgroundColor: Colors.blue,

                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: const Text('Log in ',),),

                ),
              ),
                   Padding(padding: EdgeInsets.only(top:80),
                   ),
              Center(child: Text("-Or-"),),
              Padding(padding: EdgeInsets.only(top:80),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LoginForms()));
                },

                style: ElevatedButton.styleFrom(
                    minimumSize: const Size(50, 50),
                    backgroundColor: Colors.lightBlue,

                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40))),
                child: const Text('Login With Facebook'),

              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Hello()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('Login with Twitter')),
              Padding(padding: EdgeInsets.only(top: 10)),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Hello()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('Login With Google'),),

            ],
          ),
        ));
  }
}