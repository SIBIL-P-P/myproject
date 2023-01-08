import 'package:flutter/material.dart';
void main(){runApp(const MaterialApp(home:ListPage()));

}
class ListPage extends StatelessWidget{
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: const Text("MODELS",style: TextStyle(fontStyle: FontStyle.italic),)),
      body: ListView(
        children: const [
          Card(
            color: Colors.greenAccent,
            child: ListTile(title: Text("CLASSIC 350",style: TextStyle(fontStyle: FontStyle.italic)),
              subtitle: Text("view spec"),
              leading: CircleAvatar(backgroundImage: NetworkImage("https://imgd.aeplcdn.com/360x202/bw/models/royal-enfield-classic-350-single-channel-abs--bs-vi20200303121804.jpg?q=75")),
              trailing: Icon(Icons.phone),),
          ),

          ListTile(title: Text("STANDARD 350"),
            subtitle: Text("view spec"),
            leading: Image(image: NetworkImage("https://images.hindustantimes.com/auto/auto-images/bikes/royalenfield/bullet350/exterior_royal-enfield-bullet350_right-side-view_600x400-2.jpg")),
            trailing: Icon(Icons.phone),),


          ListTile(title: Text("METEOR 350"),
            subtitle: Text("view spec"),
            leading:Image(image: NetworkImage("https://imgd.aeplcdn.com/1200x900/bw/models/royal-enfield-meteor-350-fireball20201106124644.jpg")),
            trailing: Icon(Icons.phone),),

          ListTile(title: Text("HIMALAYAN"),
            subtitle: Text("view spec"),
            leading:  Image(image: NetworkImage("https://cdni.autocarindia.com/Utils/ImageResizer.ashx?n=https://cdni.autocarindia.com/ExtraImages/20180112051043_RE-Himalayan-Sleet-Side-1.jpg&w=700&q=90&c=1")),
            trailing: Icon(Icons.phone),),


          ListTile(title: Text("CONTINENTAL GT"),
            subtitle: Text("view spec"),
            leading: Image(image: NetworkImage("https://media.zigcdn.com/media/model/2021/Mar/right-side-view-1796007878_930x620.jpg")),
            trailing: Icon(Icons.phone),),
        ],
      ),
    );
  }

}