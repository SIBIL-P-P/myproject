import 'package:flutter/material.dart';
import 'package:myproject/signup.dart';

import 'login.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Splash(),
  ));
}

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: ListView(
            children: [
              const Padding(padding: EdgeInsets.only(top: 10)),
              const Center(
                child: Text(
                  'Hello There!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 20, bottom: 20),
                child: Center(
                  child: Text(
                    "Automatic identification which enable you to verify your identity",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.black45),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Center(
                  child: Image.network(
                    "data:image/png;base64,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",
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 75),
                child: Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 10),
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => LoginForms()));
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(50, 50),
                          backgroundColor: Colors.red,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40))),
                      child: const Text('Login')),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Hello()));
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      backgroundColor: Colors.grey,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: const Text('Signup')),
            ],
          ),
        ));
  }
}