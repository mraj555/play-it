import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Media extends StatefulWidget {
  const Media({Key? key}) : super(key: key);

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        backgroundColor: Color(0xff0E0E0E),
        centerTitle: true,
        title: Text(
          "Media Manage",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              ListTile(
                title: Text(
                  'internal storage',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  "Used 71.1GB/128GB",
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              ListTile(
                title: Text(
                  'SD card',
                  style: TextStyle(color: Colors.white),
                ),
                trailing: Text(
                  "Used6.6GB/8GB",
                  style: TextStyle(color: Colors.white.withOpacity(0.5)),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.grey.withOpacity(0.6),
                  ),
                  height: 70,
                  width: 175,
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Image.network(
                        'https://archive.org/download/mx-player-icon/mx-player-icon.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    title: Text(
                      'VIDEO',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      '14.12GB',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.grey.withOpacity(0.6),
                  ),
                  height: 70,
                  width: 175,
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(top: 5, bottom: 5),
                      child: Image.network(
                        'https://cdn2.iconfinder.com/data/icons/mix-color-5/100/Mix_color_5__music-08-512.png',
                        height: 40,
                        width: 40,
                      ),
                    ),
                    title: Text(
                      'MUSIC',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      '6.35GB',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.7),
                      ),
                    ),
                    trailing: Icon(
                      Icons.arrow_forward_ios,
                      size: 15,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.videocam,
                        color: Colors.red,
                        size: 40,
                      ),
                    ),
                    Text(
                      'Watched videos',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.watch_later_outlined,
                        color: Colors.green,
                        size: 40,
                      ),
                    ),
                    Text(
                      '   Largest file',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.download,
                        color: Colors.deepPurple,
                        size: 40,
                      ),
                    ),
                    Text(
                      '  Download',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
