import 'package:flutter/material.dart';
import 'package:play_it/Download/download.dart';
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
      icon: Icon(Icons.video_library),
      text: 'VIDEO',
    ),
    Tab(
      icon: Icon(Icons.audiotrack),
      text: 'MUSIC',
    ),
    Tab(
      icon: Icon(Icons.download_sharp),
      text: 'DOWNLOAD',
    ),
    Tab(
      icon: Icon(Icons.account_circle),
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
            tabs: _tabs,
            controller: _tabController,
          ),
        ),
      ),
    );
  }
}
