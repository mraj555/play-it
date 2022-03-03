import 'package:flutter/material.dart';
import 'package:play_it/Nehal/Me/Audio.dart';
import 'package:play_it/Nehal/Me/Genral.dart';
import 'package:play_it/Nehal/Me/video.dart';

class Mysettings extends StatefulWidget {
  const Mysettings({Key? key}) : super(key: key);

  @override
  State<Mysettings> createState() => _MyappState();
}

class _MyappState extends State<Mysettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xff0E0E0E),
        title: Text(
          'Settings',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
      backgroundColor: Color(0xff0E0E0E),
      body: ListView(
        children: [
          Column(
            children: [
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Mygeneral()));
                },
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.phone_android,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15.5,
                  ),
                  title: Text(
                    "General",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Language, History',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>Videopage()));
                },
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.play_circle_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15.5,
                  ),
                  title: Text(
                    "Video",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Pop-up play, screen orientation, sontinuous playb...',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5), fontSize: 12),
                  ),
                ),
              ),
              GestureDetector(
               onTap: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context) =>Audiopage()));
               },
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 5),
                    child: Icon(
                      Icons.headset_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.white,
                    size: 15.5,
                  ),
                  title: Text(
                    "Audio",
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    'Audio format, audio duration, nomedia folder set...',
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.5), fontSize: 12),
                  ),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.download_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 15.5,
                ),
                title: Text(
                  "Downloads",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Path, Max download tasks',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5), fontSize: 12),
                ),
              ),
              ListTile(
                leading: Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Icon(
                    Icons.info_outline,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                  size: 15.5,
                ),
                title: Text(
                  "About us",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Fans group, official website, pages & channel',
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.5), fontSize: 12),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
