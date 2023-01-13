import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Profile(),
  ));
}

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const ListTile(
            leading: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            title: Text(
              "Profile",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            trailing: Icon(
              Icons.more_vert,
              color: Colors.white,
            ),
          ),
        ),
        body: Stack(
          children: [
            SizedBox(
              height: 200,
              width: 2000,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2016/05/24/16/48/mountains-1412683_1280.png",
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 400,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.red,
                  ),
                  child: const Icon(Icons.message, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: SizedBox(
                height: 200,
                child: Center(
                  child: Card(
                    shape: const CircleBorder(),
                    child: Card(
                        semanticContainer: true,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: const CircleBorder(),
                        child: Image.network(
                          "https://media.istockphoto.com/id/1218972210/vector/mountain-bike-downhill-banner-t-shirt-print-design-vector-illustration.jpg?b=1&s=612x612&w=0&k=20&c=MTLTqvOj5jB6dKM1InW67IiaFU_NnBKwaCeS_ulwqHE=",
                          fit: BoxFit.cover,
                        )),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 20,
              height: 400,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  backgroundColor: Colors.blueAccent,
                ),
                child: const Icon(Icons.add, color: Colors.white),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Text(
                      "DownHill MotorSports",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text("Adventure/Cycling"),
                ),
              ],
            )
          ],
        ));
  }
}