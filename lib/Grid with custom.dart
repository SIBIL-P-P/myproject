import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Grid_custom(),
  ));
}

class Grid_custom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GridView.custom(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          childrenDelegate: SliverChildBuilderDelegate((context, index) {
            return const Icon(
              Icons.attribution_rounded,
              size: 80,
              color: Colors.green,

            );
          },
          childCount: 12)
      ),
    );

  }
}
