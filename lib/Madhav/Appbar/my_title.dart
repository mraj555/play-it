import 'package:flutter/material.dart';
import 'package:play_it/Madhav/Playlist/my_playlist.dart';
import 'package:underline_indicator/underline_indicator.dart';

import '../../Download/download.dart';
import '../All songs/audio_page.dart';
import 'my_search.dart';

class MyTitle extends StatefulWidget {
  @override
  _MyTitleState createState() => _MyTitleState();
}

class _MyTitleState extends State<MyTitle> with SingleTickerProviderStateMixin {
  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: _tabs.length,
      vsync: this,
    );
  }

  var _tabs = [
    Tab(
      child: Text('All Songs', style: TextStyle(fontWeight: FontWeight.bold)),
    ),
    Tab(
      child: Text('Playlist', style: TextStyle(fontWeight: FontWeight.bold)),
    ),
    Tab(
      child: Text('Folder', style: TextStyle(fontWeight: FontWeight.bold)),
    ),
    Tab(
      child: Text('Album', style: TextStyle(fontWeight: FontWeight.bold)),
    ),
    Tab(
      child: Text('Artist', style: TextStyle(fontWeight: FontWeight.bold)),
    ),
  ];

  var _tabpages = [
    AudioPage(),
    Playlist(),
    Center(
      child: Text(
        'Chat',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Chat',
        style: TextStyle(fontSize: 50),
      ),
    ),
    Center(
      child: Text(
        'Chat',
        style: TextStyle(fontSize: 50),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
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
            child: TabBar(
              labelColor: Color(0xff2bc877),
              unselectedLabelColor: Colors.white,
              isScrollable: true,
              controller: controller,
              tabs: _tabs,
              indicator: UnderlineIndicator(
                borderSide: BorderSide(
                  width: 3.0,
                  color: Color(0xff2bc877),
                ),
                insets: EdgeInsets.symmetric(horizontal: 20.0),
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: controller,
              children: _tabpages,
            ),
          ),
        ],
      ),
    );
  }
}
