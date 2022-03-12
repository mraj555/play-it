import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_it/Download/_Privacy.dart';
import 'package:play_it/Download/download.dart';
import 'package:play_it/Nehal/Me/About%20us.dart';
import 'package:play_it/Nehal/Me/Converter.dart';
import 'package:play_it/Nehal/Me/History.dart';
import 'package:play_it/Nehal/Me/MediaManage.dart';
import 'package:play_it/Nehal/Me/Settings.dart';
import 'package:play_it/Ridham/Game.dart';
import 'package:play_it/Ridham/Help_Page/Bug_Page.dart';
import 'package:play_it/Ridham/Help_Page/Help_Page.dart';
import 'package:play_it/Ridham/VIP_Page.dart';
import 'package:play_it/Video/main_page.dart';

import '../../Ridham/RateUs.dart';

class Myme extends StatefulWidget {
  const Myme({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myme> {

  var _icons = [
    Icon(Icons.download_outlined),
    Icon(Icons.headset_mic_outlined),
    ImageIcon(AssetImage('assets/Icons/privacy.png')),
    Icon(Icons.access_time_outlined),
    Icon(Icons.folder_outlined),
  ];

  var _names = [
    'Downloads',
    'MP3 Converter',
    'Privacy',
    'History',
    'Media Manage',
  ];

  var _pagelist = [
    Down(),
    Converter(),
    Privacy(),
    History(),
    Media(),
  ];



  @override
  Widget build(BuildContext context) {
    final rate = aa();
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.2),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://64.media.tumblr.com/c90100fd260e77796e397f07d1771d34/fd850e41fad78fd6-86/s400x600/f15e520227c7dd8b471d729a48f26080712d8250.gifv'),
              fit: BoxFit.fill,
            )),
          ),
        ),
        body: ListView(
          children: [
            Container(
              color: Colors.black,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  GestureDetector(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          top: Radius.circular(10),
                        ),
                        child: Stack(
                            children: [
                              Image.asset("assets/me/AA2.jpg"),
                              GestureDetector(
                                onTap: (){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => Bugpage()));
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      height: 80,
                                      width: 200,
                                      color: Colors.transparent,
                                      child: Align(
                                        alignment: Alignment.topLeft,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: InkWell(
                                        onTap: (){
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => Gamepage()));
                                        },
                                        child: Container(
                                          height: 80,
                                          width: 120,
                                          color: Colors.transparent,
                                          child: Align(
                                            alignment: Alignment.topRight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],),
                      ),
                    ),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.04),
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                        child: Image.asset("assets/me/AA1.jpg"),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Vip_Page()));
                    },
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      right: size.width * 0.04,
                      left: size.width * 0.04,
                      top: size.width * 0.04,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.08,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(size.width * 0.03),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.1,
                                margin: EdgeInsets.only(right: 8),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/me/transfer.png',
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'File Transfer',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: size.width * 0.025,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: size.width * 0.44,
                          height: size.height * 0.08,
                          alignment: Alignment.center,
                          padding: EdgeInsets.all(size.width * 0.03),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                height: size.height * 0.05,
                                width: size.width * 0.1,
                                margin: EdgeInsets.only(right: 8),
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  color: Colors.greenAccent,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(
                                  'assets/me/theme.png',
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Featured Theme',
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: size.width * 0.025,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: Wrap(
                      children: List.generate(
                        5,
                        (index) {
                          return Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              splashFactory: InkRipple.splashFactory,
                              splashColor: Colors.grey.withOpacity(0.3),
                              child: Container(
                                height: size.width * 0.25,
                                width: size.width * 0.33,
                                alignment: Alignment.center,
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    GestureDetector(
                                      child: IconTheme(
                                        child: _icons[index],
                                        data: IconThemeData(
                                          color: Colors.white.withOpacity(0.9),
                                          size: size.width * 0.08,
                                        ),
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  _pagelist[index]),
                                        );
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      _names[index],
                                      style: GoogleFonts.inter(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                color: Colors.black,
                height: 60,
                width: 60,
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.only(left: 10),
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          "https://sg-res.9appsdownloading.com/sg/res/jpg/5e/ad/0c6dd1530ee8268583681c94b5c7-sfq.jpg?x-oss-process=style/mq200",
                          height: 30,
                          width: 30,
                        ),
                      ),
                      title: Text(
                        'LinkF|y VPN',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10),
              child: Container(
                color: Colors.black,
                height: 233,
                child: Column(children: [
                  GestureDetector(
                    child: ListTile(
                      leading: Icon(
                        Icons.settings,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Settings",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Mysettings()));
                    },
                  ),
                  Divider(
                    thickness: 0.4,
                    indent: 60,
                    endIndent: 20,
                    height: 0,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Help_Page()));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.live_help_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Help & Feedback",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.4,
                    indent: 60,
                    endIndent: 20,
                    height: 2,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  GestureDetector(
                    onTap: () => showDialog(
                        context: context, builder: (context) => rate.rate()),
                    child: ListTile(
                      leading: Icon(
                        Icons.thumb_up_alt_outlined,
                        color: Colors.white,
                      ),
                      title: Text(
                        "Rate us",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
                  ),
                  Divider(
                    thickness: 0.4,
                    indent: 60,
                    endIndent: 20,
                    height: 2,
                    color: Colors.white.withOpacity(0.3),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Aboutpage()));
                    },
                    title: Text(
                      "About",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Divider(
                    thickness: 0.4,
                    indent: 60,
                    endIndent: 20,
                    height: 2,
                    color: Colors.white.withOpacity(0.3),
                  ),
                ]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
