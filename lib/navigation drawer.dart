import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: drawer(),
    debugShowCheckedModeBanner: false
  ));
}

class drawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(),
        endDrawer: Drawer(
            child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Colors.orange,Colors.pinkAccent
                        ])),
                child: ListView(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage("https://c8.alamy.com/comp/2G7W1A0/dl-logo-initial-letter-monogram-with-abstrac-circle-shape-design-template-isolated-in-white-background-2G7W1A0.jpg"),
                      ),
                      title: Text("SIBIL",style: TextStyle(color: Colors.white38),),
                      subtitle: Text("sibilshivadasan12334@gmail.com",style: TextStyle(color: Colors.white38),),
                      trailing: Icon(Icons.close,color: Colors.white38),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ListTile(
                      leading: Icon(Icons.dashboard,color: Colors.white38),
                      title: Text("Dashboard",style: TextStyle(color: Colors.white38),),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.leaderboard_sharp,color: Colors.white38),
                    title: Text("Leads",style: TextStyle(color: Colors.white38),),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.people,color: Colors.white38,
                    ),
                    title: Text(
                      "clients",style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.rocket,color: Colors.white38,
                    ),
                    title: Text(
                      "Projects",style: TextStyle(color: Colors.white38),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.handshake_sharp,color: Colors.white38),
                    title: Text("partners",style: TextStyle(color: Colors.white38),),
                  ),
                  ListTile(
                    leading: Icon(Icons.subscriptions,color: Colors.white38),
                    title: Text("Subscription",style: TextStyle(color: Colors.white38),),
                  ),
                  ListTile(
                    leading: Icon(Icons.money,color: Colors.white38),
                    title: Text("Payment",style: TextStyle(color: Colors.white38),),
                  ),
                  ListTile(
                    leading: Icon(Icons.verified_user,color: Colors.white38),
                    title: Text("Users",style: TextStyle(color: Colors.white38),),
                  ),
                  ListTile(
                    leading: Icon(Icons.library_add_check,color: Colors.white38,),
                    title: Text("library",style: TextStyle(color: Colors.white38),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 100,left: 10,right: 10),
                    child: Container(
                      height: 30,
                      child: ElevatedButton(style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
                          backgroundColor: Colors.orange.shade300
                      ),
                          onPressed: () {}, child: Text("Logout")),
                    ),
                  )
                ]))));
  }
}