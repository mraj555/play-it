import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Myme extends StatefulWidget {
  const Myme({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myme> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.2),
        body: ListView(
          children: [
            Container(
              height: 430,
              color: Colors.black,
              child: Column(
                children: [
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 40,left: 8,right: 8),
                      child: Container(
                        child: ClipRRect(
                          child: Image.asset("assets/me/AA2.jpg"),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  GestureDetector(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8,right: 8),
                      child: Container(
                        child: ClipRRect(
                          child: Image.asset("assets/me/AA1.jpg"),
                        ),
                      ),
                    ),
                    onTap: () {},
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 70,
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.grey.withOpacity(0.8),
                            ),
                            height: 55,
                            width: 150,
                            child: Stack(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 2.5, left: 10),
                                      child: Card(
                                        shadowColor: Colors.black,
                                        elevation: 10,
                                        child: Container(
                                          width: 40,
                                          height: 40,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                            BorderRadius.circular(5),
                                            color:
                                            Colors.white.withOpacity(0.6),
                                          ),
                                          child: ClipRRect(
                                            child:
                                            Image.asset('assets/me/AA4.png'),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        'File Transfer',
                                        style: GoogleFonts.inter(
                                            textStyle:
                                            TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Container(
                              height: 55,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey.withOpacity(0.8),
                              ),
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            top: 2.5, left: 10),
                                        child: Card(
                                          shadowColor: Colors.black,
                                          elevation: 10,
                                          child: Container(
                                            width: 40,
                                            height: 40,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                              BorderRadius.circular(5),
                                              color:
                                              Colors.white.withOpacity(0.6),
                                            ),
                                            child: ClipRRect(
                                              child:
                                              Image.asset('assets/me/AA5.png'),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(left: 5),
                                        child: Text(
                                          'Theme',
                                          style: GoogleFonts.inter(
                                              textStyle: TextStyle(
                                                  color: Colors.white)),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: Wrap(
                      children: [
                        Container(
                          height: 75,
                          width: 100,
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              Icon(
                                Icons.download_outlined,
                                color: Colors.white.withOpacity(0.9),
                                size: 35,
                              ),
                              Text(
                                'Downloads',
                                style: GoogleFonts.inter(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 80,
                            width: 120,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.headset,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 35,
                                ),
                                Text(
                                  'Mp3 Converter',
                                  style: GoogleFonts.inter(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            height: 75,
                            width: 100,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.folder,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 35,
                                ),
                                Text(
                                  'Privacy',
                                  style: GoogleFonts.inter(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 05, left: 55),
                          child: Container(
                            height: 75,
                            width: 100,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.history,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 35,
                                ),
                                Text(
                                  'History',
                                  style: GoogleFonts.inter(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 10),
                          child: Container(
                            height: 75,
                            width: 100,
                            color: Colors.transparent,
                            child: Column(
                              children: [
                                Icon(
                                  Icons.perm_media_outlined,
                                  color: Colors.white.withOpacity(0.9),
                                  size: 35,
                                ),
                                Text(
                                  'Media Manage',
                                  style: GoogleFonts.inter(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
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
                      contentPadding: EdgeInsets.only(right: 10),
                      leading: Image.network(
                        'https://thumbs.dreamstime.com/b/glowing-neon-shield-vpn-wifi-wireless-internet-network-symbol-icon-isolated-brick-wall-background-protect-safety-182365307.jpg',
                        height: 60,
                        width: 60,
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
                  ListTile(
                    leading: Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Settings",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Divider(
                     indent: 60,
                    endIndent: 20,
                    height: 0,
                    color: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.live_help_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Help & Feedback",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Divider(
                    indent: 60,
                    endIndent: 20,
                    height: 2,
                    color: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.thumb_up_alt_outlined,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Rate us",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Divider(
                    indent: 60,
                    endIndent: 20,
                    height: 2,
                    color: Colors.white,
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.info_outline,
                      color: Colors.white,
                    ),
                    onTap: () {},
                    title: Text(
                      "About",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Divider(
                    indent: 60,
                    endIndent: 20,
                    height: 2,
                    color: Colors.white,
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
