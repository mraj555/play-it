import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_it/Appbar/my_search.dart';
import 'package:underline_indicator/underline_indicator.dart';

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
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: Stack(
          children: [
            Row(
              children: [
                Text(
                  'PLAY',
                  style: GoogleFonts.archivoBlack(
                    color: Colors.white,
                    fontSize: 21,
                  ),
                ),
                Text(
                  'it',
                  style: GoogleFonts.archivoBlack(
                    color: Colors.white,
                    fontSize: 19,
                  ),
                ),
              ],
            ),
            Positioned(
              left: 71.4,
              top: 9,
              width: 4.4,
              child: Container(
                height: 3.5,
                width: 3,
                color: Colors.red,
              ),
            ),
          ],
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
            onPressed: () {},
            icon: Icon(Icons.download_outlined),
            splashRadius: 20,
          ),
        ],
        bottom: TabBar(
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
      body: TabBarView(
        controller: controller,
        children: _tabpages,
      ),
    );
  }
}
