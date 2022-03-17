import 'package:disk_space/disk_space.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Media extends StatefulWidget {
  const Media({Key? key}) : super(key: key);

  @override
  State<Media> createState() => _MediaState();
}

class _MediaState extends State<Media> {
  List _icon = [
    Icons.videocam,
    Icons.watch_later_outlined,
    Icons.download,
  ];
  List _iconname = [
    'Watched videos',
    'Largest file',
    'Download',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
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
              Container(
                margin: EdgeInsets.only(left: size.width * 0.02),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey.withOpacity(0.6),
                ),
                height: size.height * 0.11,
                width: size.height * 0.25,
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Image.network(
                      'https://archive.org/download/mx-player-icon/mx-player-icon.png',
                      height: size.height * 0.2,
                      width: size.width * 0.12,
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
                    size: size.height * 0.022,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: size.width * 0.03),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey.withOpacity(0.6),
                ),
                height: size.height * 0.11,
                width: size.height * 0.25,
                child: ListTile(
                  leading: Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Image.network(
                      'https://cdn2.iconfinder.com/data/icons/mix-color-5/100/Mix_color_5__music-08-512.png',
                      height: size.height * 0.2,
                      width: size.width * 0.11,
                    ),
                  ),
                  title: Text(
                    'MUSIC',
                    style: TextStyle(color: Colors.white),
                  ),
                  subtitle: Text(
                    '408M',
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  trailing: Icon(
                    Icons.arrow_forward_ios,
                    size: size.height * 0.022,
                    color: Colors.white.withOpacity(0.5),
                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.only(
                top: size.height * 0.03, bottom: size.height * 0.03),
            height: size.height * 0.1,
            child: ListView.builder(
              itemCount: _icon.length,
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: size.width * 0.1),
                    child: Column(
                      children: [
                        Icon(
                          _icon[index],
                          size: size.height * 0.055,
                          color: index == 0
                              ? Colors.orange
                              : index == 1
                                  ? Colors.green
                                  : Colors.deepPurple,
                        ),
                        SizedBox(height: size.height * 0.02),
                        Text(
                          _iconname[index],
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Videos you haven't watchad",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              "You haven't watched these videos for along time.",
              style:
                  TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 12),
            ),
            trailing: Directionality(
              textDirection: TextDirection.rtl,
              child: TextButton.icon(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.green,
                ),
                label: Text(
                  'All',
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
