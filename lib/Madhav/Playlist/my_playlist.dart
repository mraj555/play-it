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
          Row(
            children: [
              Text('Playlist(3)',style: TextStyle(color: Colors.white),),
              IconButton(onPressed: (){}, icon: Icon(Icons.add,color: Colors.grey,size: 20,))
            ],
          ),
        ],
      ),
    );
  }
}
