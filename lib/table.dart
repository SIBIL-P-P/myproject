import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: MyTable(),));
}

class MyTable extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child:
      DataTable(
        decoration: BoxDecoration(border: Border.all(width: 10),),
        columns: const [
          DataColumn(label: Text("id")),
          DataColumn(label: Text("Name")),
          DataColumn(label: Text("Age")),
          DataColumn(label: Text("Gender")),

        ],
        rows: const [
          DataRow(cells:
          [DataCell(Text("11")),
            DataCell(Text("Danny")),
            DataCell(Text("25")),
            DataCell(Text("M"))]),
          DataRow(cells:
          [DataCell(Text("22")),
            DataCell(Text("ranny")),
            DataCell(Text("35")),
            DataCell(Text("F"))]),
          DataRow(cells:
          [DataCell(Text("33")),
            DataCell(Text("Benny")),
            DataCell(Text("55")),
            DataCell(Text("M"))])
        ],

      ),),
    );
  }
}