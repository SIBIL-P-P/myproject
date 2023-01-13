import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Mybottombar(),
    debugShowCheckedModeBanner: false,
  ));
}
class Mybottombar extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_MybottombarState();

}

class _MybottombarState extends State<Mybottombar>{
  List screen=[const Text("Home"),
    const Text("Search"),
    const Text("Reels"),
    const Text("Notifications"),
    const Text("Accounts")];
  int index=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Instagram"),
          backgroundColor: Colors.pinkAccent,
      ),
      
      bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(80),topRight: Radius.circular(80)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
            currentIndex: index,
            onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
            },
             backgroundColor: Colors.pinkAccent,
            selectedItemColor: Colors.white,
            items:const [
              BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.search_rounded),label: "Search"),
              BottomNavigationBarItem(icon: Icon(Icons.video_collection_outlined),label: "Reels"),
              BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Notifications"),
              BottomNavigationBarItem(icon: Icon(Icons.account_circle),label: "Accounts"),
            ]),
      ),
      body: Center(child: screen[index],),
    );
  }
}