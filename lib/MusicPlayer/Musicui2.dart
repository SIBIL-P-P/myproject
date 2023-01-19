import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(scaffoldBackgroundColor: Colors.black87),
    home: MusicUi2(),
  ));
}

class MusicUi2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(

        body: ListView(

          children: [


            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text("Playlists",style: GoogleFonts.mukta(fontSize: 30,color: Colors.green.shade300),textAlign: TextAlign.center,),
              
            ),

            Padding(
              padding: const EdgeInsets.only(top: 20,left: 20,right: 20),
              child: Container(
                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(50),color: Colors.black12,
                    border: Border.all(color: Colors.green.shade300)),
                child:TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(left: 20),
                    labelText: "Search...",

                    labelStyle: TextStyle(color: Colors.green.shade300),
                    suffixIcon: Icon(Icons.search,color: Colors.green.shade300,),

                  ),
                ),
              ),
            ),
            Container(
              height: 2000,
              width: double.infinity,
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage("https://raw.githubusercontent.com/sanjeay/My-projects/master/assets/msicplayer/top50.jpeg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://media.istockphoto.com/id/1326326478/photo/3d-render-ultraviolet-neon-triangular-portal-glowing-lines-tunnel-corridor-virtual-reality.jpg?b=1&s=170667a&w=0&k=20&c=C5oV6IsBQQVaPpc2k_cX7rfNbUcj8jjvbloojvR7Z2o="))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://i1.sndcdn.com/artworks-h37XMNbMHw7mtQIy-E7g6YA-t500x500.jpg"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://raw.githubusercontent.com/sanjeay/My-projects/master/assets/msicplayer/mike.jpeg")
                          ,)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage("https://i.scdn.co/image/ab67706c0000da84c82624b873d6a3392b0ab9cc"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage("https://raw.githubusercontent.com/sanjeay/My-projects/master/assets/msicplayer/tiktok.jpeg"))),
                    ),
                  ), Padding(
                    padding: const EdgeInsets.only(right: 10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage("https://i.scdn.co/image/ab67706c0000da840da53f1e07cf30cf35527dfc"))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:10,top: 10),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: const DecorationImage(
                              image: NetworkImage(
                                  "https://davidbyrne.com/images/made/images/uploads/radio/pop-art-gary-grayson_442_442_60_c1.jpeg"))),
                    ),
                  ),

                ],

              ),

            ),
          ]
          ,
        )

    );

  }
}


