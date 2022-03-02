import 'package:flutter/material.dart';

class MyVideo extends StatefulWidget {
  const MyVideo({Key? key}) : super(key: key);

  @override
  _MyVideoState createState() => _MyVideoState();
}

class _MyVideoState extends State<MyVideo> {
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

  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
