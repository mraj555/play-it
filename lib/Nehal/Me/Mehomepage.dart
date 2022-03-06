import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_it/Download/download.dart';
import 'package:play_it/Nehal/Me/About%20us.dart';
import 'package:play_it/Nehal/Me/Settings.dart';
import 'package:play_it/Ridham/Help_Page/Help_Page.dart';
import 'package:play_it/Ridham/VIP_Page.dart';
import 'package:rating_dialog/rating_dialog.dart';

class Myme extends StatefulWidget {
  const Myme({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myme> {
  static var a = 'assets/Icons/0.webp';
  static var b = 'assets/Icons/1.webp';
  static var c = 'assets/Icons/2.webp';
  static var d = 'assets/Icons/3.webp';
  static var e = 'assets/Icons/4.webp';
  static var f = 'assets/Icons/5.webp';

  static var text = 'Rate Us';
  static var text1 = 'Hate it';
  static var text2 = 'Dislike it';
  static var text3 = "It's OK";
  static var text4 = 'Like it';
  static var text5 = 'Love it';

  final _dialog = Dialog(
    backgroundColor: Colors.transparent,
    insetPadding: EdgeInsets.zero,
    child: StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 50, left: 60),
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xffFFF4DE),
                          Color(0xffFEF2CA),
                        ],
                      ),
                    ),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 60),
                          child: Text(
                            "$text",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 20, top: 25, right: 10),
                          child: Text(
                            "If you like PLAYit,please give us flive stars on the Google Play",
                            style: TextStyle(fontSize: 15, color: Colors.black),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 45, top: 20),
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      _star = !_star;
                                      if (_star == true) {
                                        _star = true;
                                        _star1 = false;
                                        _star2 = false;
                                        _star3 = false;
                                        _star4 = false;
                                        a = b;
                                        text = text1;
                                      }
                                      if (_star == false) {
                                        _star = true;
                                        _star1 = false;
                                        _star2 = false;
                                        _star3 = false;
                                        _star4 = false;
                                        a = b;
                                        text = text1;
                                      }
                                    },
                                  );
                                },
                                child: Icon(
                                  _star ? Icons.star : Icons.star_border,
                                  size: 35,
                                  color: _star ? Colors.amber : Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      _star1 = !_star1;
                                      if (_star1 == true) {
                                        _star = true;
                                        _star1 = true;
                                        _star2 = false;
                                        _star3 = false;
                                        _star4 = false;
                                        a = c;
                                        text = text2;
                                      }
                                      if (_star1 == false) {
                                        _star1 = true;
                                        _star2 = false;
                                        _star3 = false;
                                        _star4 = false;
                                        a = c;
                                        text = text2;
                                      }
                                    },
                                  );
                                },
                                child: Icon(
                                  _star1 ? Icons.star : Icons.star_border,
                                  size: 35,
                                  color: _star1 ? Colors.amber : Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      _star2 = !_star2;
                                      if (_star2 == true) {
                                        _star = true;
                                        _star1 = true;
                                        _star2 = true;
                                        _star3 = false;
                                        _star4 = false;
                                        a = d;
                                        text = text3;
                                      }
                                      if (_star2 == false) {
                                        _star2 = true;
                                        _star3 = false;
                                        _star4 = false;
                                        a = d;
                                        text = text3;
                                      }
                                    },
                                  );
                                },
                                child: Icon(
                                  _star2 ? Icons.star : Icons.star_border,
                                  size: 35,
                                  color: _star2 ? Colors.amber : Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      _star3 = !_star3;
                                      if (_star3 == true) {
                                        _star = true;
                                        _star1 = true;
                                        _star2 = true;
                                        _star3 = true;
                                        _star4 = false;
                                        a = e;
                                        text = text4;
                                      }
                                      if (_star3 == false) {
                                        _star3 = true;
                                        _star4 = false;
                                        a = e;
                                        text = text4;
                                      }
                                    },
                                  );
                                },
                                child: Icon(
                                  _star3 ? Icons.star : Icons.star_border,
                                  size: 35,
                                  color: _star3 ? Colors.amber : Colors.black,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(
                                    () {
                                      _star4 = !_star4;
                                      if (_star4 == true) {
                                        _star = true;
                                        _star1 = true;
                                        _star2 = true;
                                        _star3 = true;
                                        _star4 = true;
                                        a = f;
                                        text = text5;
                                      }
                                      if (_star4 = true) {
                                        _star4 = true;
                                        a = f;
                                        text = text5;
                                      }
                                    },
                                  );
                                },
                                child: Icon(
                                  _star4 ? Icons.star : Icons.star_border,
                                  size: 35,
                                  color: _star4 ? Colors.amber : Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: SizedBox(
                              width: 200,
                              child: ElevatedButton(
                                  onPressed: _star == true
                                      ? () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) => Myme(),
                                            ),
                                          );
                                        }
                                      : null,
                                  style: ElevatedButton.styleFrom(
                                      primary: Color(0xff1613c2),
                                      fixedSize: Size(300, 25)),
                                  child: Text("Submit"),),),
                        ),
                        TextButton(onPressed: () {}, child: Text("Exit")),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 220, top: 5),
                    child: InkWell(
                        onTap: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => Myme()));
                        },
                        child: Icon(
                          Icons.cancel,
                          color: Colors.grey,
                        )),
                  )
                ],
              ),
            ),
            Baseline(
              baseline: -250,
              baselineType: TextBaseline.ideographic,
              child: Image.asset(
                '$a',
                height: 100,
                width: 100,
              ),
            ),
          ],
        );
      },
    ),
  );

  var _icons = [
    Icons.download_outlined,
    Icons.headset_mic_outlined,
    Icons.folder_outlined,
    Icons.access_time_outlined,
    Icons.folder_outlined,
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
    Down(),
    Down(),
    Down(),
    Down(),
  ];

  static var _star = false;
  static var _star1 = false;
  static var _star2 = false;
  static var _star3 = false;
  static var _star4 = false;

  @override
  Widget build(BuildContext context) {
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
                        child: Image.asset("assets/me/AA2.jpg"),
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
                                      child: Icon(
                                        _icons[index],
                                        color: Colors.white.withOpacity(0.9),
                                        size: 30,
                                      ),
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    _pagelist[index]));
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
                height: 300,
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
                        context: context, builder: (context) => _dialog),
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
