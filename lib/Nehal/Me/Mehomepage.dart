import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Myme extends StatefulWidget {
  const Myme({Key? key}) : super(key: key);

  @override
  _MyappState createState() => _MyappState();
}

class _MyappState extends State<Myme> {
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
              ),
            ),
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
                    onTap: () {},
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
                                    Icon(
                                      _icons[index],
                                      color: Colors.white.withOpacity(0.9),
                                      size: 30,
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
                    thickness: 0.1,
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
                    thickness: 0.1,
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
                    thickness: 0.1,
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
                    thickness: 0.1,
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
