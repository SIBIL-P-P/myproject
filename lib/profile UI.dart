import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile_ui(),));
}

class Profile_ui extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.menu),
            ),
            Container(
              child: CircleAvatar(radius: 75,
                backgroundImage: NetworkImage("data:image/png;base64,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"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:40,left: 20,right: 20,bottom: 40),
              child: Container(
                height: 50,
                width: 250,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network("https://cdn-icons-png.flaticon.com/512/5968/5968764.png"),
                    Image.network("https://cdn-icons-png.flaticon.com/512/3670/3670151.png"),
                    Image.network("https://cdn-icons-png.flaticon.com/512/145/145807.png"),
                    Image.network("https://cdn-icons-png.flaticon.com/512/733/733609.png"),
                  ],
                ),
              ),
            ),
            Column(
              children: [
                Text("David Luie",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700),),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text("@Dl"),
                ),
                Text("Mobile App Developer",style: TextStyle(fontSize: 15),),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Container(
                    margin: const EdgeInsets.only(left: 10, right: 10),
                    height: MediaQuery.of(context).size.height * 0.4,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.privacy_tip_outlined),
                                title: Text("Privacy"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.history),
                                title: Text("Purchase History"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.help_outline),
                                title: Text("Help and Support"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.settings),
                                title: Text("Settings"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Container(
                              decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                              child: ListTile(
                                leading: Icon(Icons.add_reaction_outlined),
                                title: Text("Invite a friend"),
                                trailing: Icon(Icons.arrow_forward_ios),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.grey.shade200,borderRadius: BorderRadius.circular(20)),
                            child: ListTile(
                              leading: Icon(Icons.logout),
                              title: Text("Log out"),
                              trailing: Icon(Icons.arrow_forward_ios),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

              ],
            ),

          ],
        ),
      ),
    );
  }
}
