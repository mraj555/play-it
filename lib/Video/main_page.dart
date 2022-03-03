import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:play_it/Madhav/Appbar/my_title.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';
import 'package:play_it/Video/video_home.dart';

import '../Download/homepage.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin {
  TabController? _tabController;

  PageController _pageController = PageController();

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
    HomeVideo(),
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
    requestPermission();
  }

  void requestPermission() async {
    var status1 = await Permission.manageExternalStorage.status;
    if(!status1.isGranted) {
      await Permission.manageExternalStorage.request();
    }

    var status = await Permission.storage.status;
    if(!status.isGranted) {
      await Permission.storage.request();
    }
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
            labelColor: Color(0xff2bc877),
            unselectedLabelColor: Colors.white,
          ),
        ),
      ),
    );
  }
}
