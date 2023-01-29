import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
    home: const Musify(),
  ));
}

class Musify extends StatefulWidget {
  const Musify({super.key});

  @override
  State<Musify> createState() => _MusifyState();
}

class _MusifyState extends State<Musify> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: AppBar(

    ),
      bottomNavigationBar:BottomNavigationBar(
          items:[
           GNav(
             tabs: [
           GButton(
           icon: LineIcons.home,
           text: 'Home',
           ),
            GButton(
              icon: LineIcons.heart_o,
              text: 'Likes',
            ),
            GButton(
              icon: LineIcons.search,
              text: 'Search',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Profile',
            ),
           ],
           )
      ]) ,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Center(
                  child: Text(
                    "Musify",
                    style: GoogleFonts.mukta(
                        fontSize: 30, color: Colors.pink.shade200),
                    textAlign: TextAlign.center,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 15),
              child: Row(
                children: [
                  Text(
                    "Suggested playlists",
                    style: GoogleFonts.mukta(
                        color: Colors.pink.shade200, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 15),
              child: CarouselSlider(items: [
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage("assets/images/car music.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 40),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: DecorationImage(
                            image: AssetImage(
                                "assets/images/adrinaline.jpg"),
                            fit: BoxFit.cover)),
                  ),
                ),

              ], options: CarouselOptions(viewportFraction: 0.6, height: 170)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, top: 20),
              child: Row(
                children: [
                  Text(
                    "Recommended for you",
                    style: GoogleFonts.mukta(
                        color: Colors.pink.shade200, fontSize: 20),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                trailing: Wrap(
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.download_outlined,
                      color: Colors.pink.shade200,
                    ),
                    SizedBox(
                      width: 40,
                    )
                  ],
                ),
                tileColor: Colors.black,
                subtitle: Text(
                  "Hero",
                  style: GoogleFonts.mukta(color: Colors.white),
                ),
                title: Text(
                  "taylor Swift",
                  style: GoogleFonts.mukta(color: Colors.pink.shade200),
                ),
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: Image.asset(
                        "assets/images/hero.jpg")),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                  trailing: Wrap(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.download_outlined,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                  tileColor: Colors.black,
                  subtitle: Text(
                    "Unholy",
                    style: GoogleFonts.mukta(color: Colors.white),
                  ),
                  title: Text(
                    "Sam smith,Kim Petras",
                    style: GoogleFonts.mukta(color: Colors.pink.shade200),
                  ),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child:
                      Image.asset("assets/images/unholy.jpg"))),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                  trailing: Wrap(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.download_outlined,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                  tileColor: Colors.black,
                  subtitle: Text(
                    "Lift Me Up",
                    style: GoogleFonts.mukta(color: Colors.white),
                  ),
                  title: Text(
                    "Rihanna",
                    style: GoogleFonts.mukta(color: Colors.pink.shade200),
                  ),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child:Image.asset(
                          "assets/images/lift me up.jpg"))),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                  trailing: Wrap(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.download_outlined,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                  tileColor: Colors.black,
                  subtitle: Text(
                    "Depression",
                    style: GoogleFonts.mukta(color: Colors.white),
                  ),
                  title: Text(
                    "Dax",
                    style: GoogleFonts.mukta(color: Colors.pink.shade200),
                  ),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child:  Image.asset("assets/images/depression.jpg"))),
            ),

            Padding(
              padding:  EdgeInsets.only(left: 15, right: 15, top: 10),
              child: ListTile(
                  trailing: Wrap(
                    children: [
                      Icon(
                        Icons.star_border,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(
                        Icons.download_outlined,
                        color: Colors.pink.shade200,
                      ),
                      SizedBox(
                        width: 40,
                      )
                    ],
                  ),
                  tileColor: Colors.black,
                  subtitle: Text(
                    "I'm Good",
                    style: GoogleFonts.mukta(color: Colors.white),
                  ),
                  title: Text(
                    "David Guetta & BEbe Rexha",
                    style: GoogleFonts.mukta(color: Colors.pink.shade200),
                  ),
                  leading: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset("assets/images/im good.jpg"))),
            ),

          ],
        ),
      ),

    );
  }
}
