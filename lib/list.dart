import 'package:flutter/material.dart';

void main(){
  runApp(const MaterialApp(home:ListPage()));

}
class ListPage extends StatelessWidget{
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("CONTACTS",style: TextStyle(fontStyle: FontStyle.normal),)),
      body: ListView(
        children:  [
          Card(
            color: Colors.greenAccent,
            child: ListTile(title: Text("DOMINIC",),

              // subtitle: Text("view spec"),
              // leading: CircleAvatar(backgroundImage: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/a/ad/LetterD.svg/800px-LetterD.svg.png")),
              trailing: Wrap(children: const [
                Icon(Icons.phone),Icon(Icons.message)
              ],),

            ),
          ),

           ListTile(title: Text("AARON"),
            // subtitle: Text("view spec"),
            // leading: Image(image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Letter_A.svg/2048px-Letter_A.svg.png")),
            trailing: Wrap(children: [
              Icon(Icons.phone),Icon(Icons.message)
            ],),),


           ListTile(title: Text("CARL MAX"),
            // subtitle: Text("view spec"),
            // leading:Image(image: NetworkImage("https://w7.pngwing.com/pngs/554/796/png-transparent-letter-c-alphabet-letter-c-miscellaneous-text-monochrome.png")),
            trailing:Wrap(children: [
              Icon(Icons.phone),Icon(Icons.message)
            ],),),

           ListTile(title: Text("TEENA"),
            // subtitle: Text("view spec"),
            // leading:  Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRj1UK16iNnfr3DdqtEMiR8X1xw7bGoYV0v_Q&usqp=CAU")),
            trailing:Wrap(children: [
              Icon(Icons.phone),Icon(Icons.message)
            ],),),


           ListTile(title: Text("LOVE"),
            // subtitle: Text("view spec"),
            // leading: Image(image: NetworkImage("https://pngimg.com/uploads/letter_L/letter_L_PNG52.png")),
            trailing:Wrap(children: [
              Icon(Icons.phone),Icon(Icons.message)
            ],),),
        ],
      ),
    );
  }

}