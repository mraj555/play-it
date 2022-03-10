import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_it/Download/download.dart';
import 'package:play_it/Video/video_page.dart';
import 'package:play_it/Video/video_playlist.dart';
import 'package:underline_indicator/underline_indicator.dart';

import '../Madhav/Appbar/my_search.dart';

class HomeVideo extends StatefulWidget {
  const HomeVideo({Key? key}) : super(key: key);

  @override
  State<HomeVideo> createState() => _HomeVideoState();
}

class _HomeVideoState extends State<HomeVideo>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  var _tabs = [
    Tab(
      text: 'Video',
    ),
    Tab(
      text: 'Folder',
    ),
    Tab(
      text: 'Playlist',
    ),
  ];

  var _tabView = [
    VideoPage(),
    Center(
      child: Icon(Icons.height),
    ),
    VideoPlaylist(),
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _tabs.length,
      vsync: this,
    );
  }


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://64.media.tumblr.com/c90100fd260e77796e397f07d1771d34/fd850e41fad78fd6-86/s400x600/f15e520227c7dd8b471d729a48f26080712d8250.gifv'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          elevation: 0,
          title: Image.asset(
            'assets/Icons/logo.png',
            height: 96,
            width: 96,
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mysearch(),
                  ),
                );
              },
              icon: Icon(Icons.search),
              splashRadius: 20,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Down()));
              },
              icon: ImageIcon(
                AssetImage('assets/Icons/download_1.png'),
                size: 24,
              ),
              splashRadius: 20,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 230,
                    child: TabBar(
                      // dragStartBehavior: DragStartBehavior.down,
                      tabs: _tabs,
                      indicatorPadding: EdgeInsets.zero,
                      padding: EdgeInsets.zero,
                      indicator: UnderlineIndicator(
                        strokeCap: StrokeCap.round,
                        borderSide: BorderSide(
                            width: 3,
                            color: Color(0xff2bc877)
                        ),
                        insets: EdgeInsets.symmetric(horizontal: 20),
                      ),
                      labelColor: Color(0xff2bc877),
                      unselectedLabelColor: Colors.white,
                      labelPadding: EdgeInsets.zero,
                      labelStyle: GoogleFonts.inter(
                        fontSize: size.width * 0.03,
                        fontWeight: FontWeight.bold,
                      ),
                      controller: _tabController,
                    ),
                  ),
                  ButtonBar(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.list,
                          color: Colors.white,
                        ),
                      ),
                      Icon(
                        Icons.list_alt,
                        color: Colors.white,
                      )
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: TabBarView(
                children: _tabView,
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
