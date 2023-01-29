import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is root
// of your application
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // By using this line,
      // you can hide Debug banner
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const NeumorphismPage(),
    );
  }
}
class NeumorphismPage extends StatefulWidget {
  const NeumorphismPage({Key? key}) : super(key: key);

  @override
  State<NeumorphismPage> createState() => _NeumorphismPageState();
}

class _NeumorphismPageState extends State<NeumorphismPage> {
  bool isElevated = false;

  @override
  Widget build(BuildContext context) {
    // Create your widget here.
    return Scaffold();
  }
}