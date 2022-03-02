import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Myme extends StatefulWidget {
  const Myme({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myme> {
  List <IconData>_icon=[
    Icons.download_outlined,
    Icons.headset,
    Icons.folder,
    Icons.history,
    Icons.perm_media_outlined,
  ];
  List name=[
    'Download',
    'MP3 Converter',
    'Privacy',
    'History',
    'Media Manage',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.withOpacity(0.2),
        appBar: AppBar(
          toolbarHeight: size.height * 0.06,
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
              height: size.height * 0.60,
              color: Colors.black,
              child: Column(
                children: [
                  GestureDetector(
                    child: Container(
                      margin:
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
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
                          EdgeInsets.symmetric(horizontal: size.width * 0.03),
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(
                          bottom: Radius.circular(10),
                        ),
                        child: Image.asset("assets/me/AA1.jpg"),
                      ),
                    ),
                    onTap: () {},
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        top: 10,
                        left: size.width * 0.03,
                        right: size.width * 0.03),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: size.height * 0.09,
                            width: size.width * 0.46,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10),
                                  child: Image.asset('assets/me/transfer.png',height: 25,width: 25,),
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.blue),
                                ),
                                Text(
                                  'File Transfer',
                                  style: GoogleFonts.inter(
                                      color: Colors.white, fontSize: 12),
                                )
                              ],
                            )),
                        Container(
                            height: size.height * 0.09,
                            width: size.width * 0.45,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.grey),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(8),color: Colors.green),
                                  child: Image.asset('assets/me/theme.png',color: Colors.white,),
                                ),
                                Text(
                                  'Featured Theme',
                                  style: GoogleFonts.inter(
                                      color: Colors.white, fontSize: 11),
                                )
                              ],
                            )),
                      ],
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
                                color: Colors.white,
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
                          padding: EdgeInsets.only(left: 10),
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
                          padding:  EdgeInsets.only(top: 05, left: 55),
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
