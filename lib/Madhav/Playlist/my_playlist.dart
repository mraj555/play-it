import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Playlist extends StatefulWidget {
  const Playlist({Key? key}) : super(key: key);

  @override
  State<Playlist> createState() => _PlaylistState();
}

class _PlaylistState extends State<Playlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Playlist(3)',style: TextStyle(color: Colors.white),),
                IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.grey,size: 20,))
              ],
            ),
          ),
          ListTile(
            onTap: (){},
            leading: Image.asset('assets/Audio/all.webp'),
            title: Text('All',style: TextStyle(color: Colors.white),),
            subtitle: Text('Songs',style: TextStyle(color: Colors.grey),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
          ListTile(
            onTap: (){},
            leading: Image.asset('assets/Audio/recent.webp'),
            title: Text('Recebtly Played',style: TextStyle(color: Colors.white),),
            subtitle: Text('Songs',style: TextStyle(color: Colors.grey),),
            trailing: Icon(Icons.play_arrow,color: Colors.white,),
          ),
          ListTile(
            onTap: (){},
            leading: Image.asset('assets/Audio/fav.webp'),
            title: Text('Favorite',style: TextStyle(color: Colors.white),),
            subtitle: Text('Songs',style: TextStyle(color: Colors.grey),),
          ),
        ],
      ),
    );
  }
}
