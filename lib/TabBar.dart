import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myproject/list.dart';
import 'package:myproject/listviewwithSeperated.dart';

void main() {
  runApp(MaterialApp(
    home: MyTab(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green)
            .copyWith(onPrimary: const Color(0xFFFFF176))),
  ));
}

class MyTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("My Tab Bar"),
            bottom: const TabBar(
              indicatorWeight: 2,
              isScrollable: true,
              tabs: [
                Tab(
                  icon: Icon(Icons.people_alt_outlined),
                ),
                Tab(
                  text: "Chats",
                ),
                Tab(
                  text: "Status",
                ),
                Tab(
                  text: "Calls",
                )
              ],
            ),
            actions: [
              Icon(Icons.camera_alt_outlined),

              Icon(Icons.search),
              PopupMenuButton(itemBuilder: (context) {
                return [
                  const PopupMenuItem(child: Text("New broadcast")),
                  const PopupMenuItem(child: Text("Linked devices")),
                  const PopupMenuItem(child: Text("Starred messages")),
                  const PopupMenuItem(child: Text("Payments")),
                  const PopupMenuItem(child: Text("New group")),
                  const PopupMenuItem(child: Text("Settings")),
                ];
              }),
            ],
          ),
          body: TabBarView(
            children: [
              const Center(
                child: Text("Community"),
              ),
              const Center(
                child: Text("Chats"),
              ),
              const Center(
                child: Text("Status"),
              ),
              const Center(
                child: Text("Calls"),
              ),
              List_with_builder(),
              const ListPage(),
            ],
          ),
        ));
  }
}
