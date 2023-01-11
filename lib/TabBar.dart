import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/list.dart';

import 'Listwith builder.dart';

// void main() {
//   runApp(MaterialApp(
//     home: MyTab(),
//     debugShowCheckedModeBanner: false,
//     theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
//             .copyWith(onPrimary: Colors.white)),
//   ));
// }
//
// class MyTab extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//         length: 4,
//         child: Scaffold(
//           appBar: AppBar(
//             title: const Text("Whatsapp"),
//             bottom: const TabBar(
//               indicatorWeight: 2,
//               isScrollable: true,
//               tabs: [
//                 Tab(
//                   icon: Icon(Icons.people_alt_outlined),
//                 ),
//                 Tab(
//                   text: "Chats",
//                 ),
//                 Tab(
//                   text: "Status",
//                 ),
//                 Tab(
//                   text: "Calls",
//                 )
//               ],
//             ),
//             actions: [
//               Icon(Icons.camera_alt_outlined),
//
//               Icon(Icons.search),
//               PopupMenuButton(itemBuilder: (context) {
//                 return [
//                   const PopupMenuItem(child: Text("New broadcast")),
//                   const PopupMenuItem(child: Text("Linked devices")),
//                   const PopupMenuItem(child: Text("Starred messages")),
//                   const PopupMenuItem(child: Text("Payments")),
//                   const PopupMenuItem(child: Text("New group")),
//                   const PopupMenuItem(child: Text("Settings")),
//                 ];
//               }),
//             ],
//           ),
//           body: TabBarView(
//             children: [
//               const Center(
//                 child: Text("Community"),
//               ),
//               const Center(
//                 child: Text("Chats"),
//               ),
//               const Center(
//                 child: Text("Status"),
//               ),
//               const Center(
//                 child: Text("Calls"),
//               ),
//               List_with_builder(),
//               const ListPage(),
//             ],
//           ),
//         ));
//   }
// }
void main() {
  runApp(MaterialApp(
    home: MyTab(),
    // theme: ThemeData(
    //   colorScheme: ColorScheme.fromSwatch().copyWith(primary: Color(0xff2e7d32))
    // ),
    debugShowCheckedModeBanner: false,));
}

class MyTab extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.green[800],
            title:Text("My Tab Bar"),
            actions:  [
              Icon(Icons.camera_alt),
              SizedBox(width: 20,),
              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context){
                return[
                  const PopupMenuItem(child: Text("Newgroup")),
                  PopupMenuItem(child: Text("NewBroadcast")),
                  PopupMenuItem(child: Text("Linked devices")),
                  PopupMenuItem(child: Text("Payments")),
                  PopupMenuItem(child: Text("Starred messages")),
                  PopupMenuItem(child: Text("Settings")),

                ];
              })
            ],
            bottom:   TabBar(
                labelPadding: EdgeInsets.zero,
                isScrollable: true,
                // unselectedLabelColor: Colors.yellow,
                indicatorSize: TabBarIndicatorSize.label,
                //   indicator: BoxDecoration( ) ,
                // indicatorColor: Colors.black,
                tabs:[
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .1,
                    child: Tab(icon: Icon(Icons.people,size: 30,),),),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*.3,
                      child: Tab(text: "Chats")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*.3,
                      child: Tab(text: "Status")),
                  SizedBox(
                      width: MediaQuery.of(context).size.width*.3,
                      child: Tab(text: "Call"))
                ]) ,
          ),
          body:  TabBarView(
            children: [
              const Center(child: Text("Community"),),
              const Center(child: Text("Chats"),),
              List_with_builder(),
              ListPage(),

            ],

          ),
        )
    );
  }

}