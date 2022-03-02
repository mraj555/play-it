import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_it/Madhav/Appbar/my_title.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';

import '../Download/homepage.dart';

class MyVideo extends StatefulWidget {
  const MyVideo({Key? key}) : super(key: key);

  @override
  _MyVideoState createState() => _MyVideoState();
}

class _MyVideoState extends State<MyVideo> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  var _tabs = [
    Tab(
      icon: ImageIcon(
        AssetImage('assets/Icons/playit.png'),
        size: 32,
      ),
      text: 'VIDEO',
    ),
    Tab(
      icon: ImageIcon(
        AssetImage('assets/Icons/music.png'),
        size: 32,
      ),
      text: 'MUSIC',
    ),
    Tab(
      icon: ImageIcon(
        AssetImage('assets/Icons/download.png'),
        size: 32,
      ),
      text: 'DOWNLOAD',
    ),
    Tab(
      icon: ImageIcon(
        AssetImage('assets/Icons/me.png'),
        size: 32,
      ),
      text: 'ME',
    ),
  ];

  var _tabView = [
    Text('Video'),
    MyTitle(),
    Home(),
    Myme(),
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
    return SafeArea(
      child: Scaffold(
        body: TabBarView(
          controller: _tabController,
          children: _tabView,
        ),
        bottomNavigationBar: Material(
          color: Colors.black,
          child: TabBar(
            labelStyle: GoogleFonts.inter(fontSize: 10),
            tabs: _tabs,
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Color(0xff30cc74),
            unselectedLabelColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
