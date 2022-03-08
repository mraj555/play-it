 import 'package:flutter/material.dart';
import 'package:play_it/Ridham/Help_Page/FAQ_Page.dart';
import 'package:play_it/Ridham/Help_Page/Feedback_Page.dart';

class Help_Page extends StatefulWidget {
  const Help_Page({Key? key}) : super(key: key);

  @override
  State<Help_Page> createState() => _Help_PageState();
}

class _Help_PageState extends State<Help_Page> {
  var _tab = [
    Tab(
      child: Text("FAQ"),
    ),
    Tab(
      child: Text("Feedback"),
    ),
  ];

  var _tabpage = [
    FAQ_Page(),
    Feedback_Page(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tab.length,
      child: Scaffold(
        backgroundColor: Color(0xff0E0E0E),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xff0E0E0E),
          title: Text(
            "Help & Feedback",
            style: TextStyle(fontSize: 22),
          ),
          centerTitle: true,
          bottom: TabBar(
            tabs: _tab,
            isScrollable: false,
            indicatorColor: Colors.white,
            labelPadding: EdgeInsets.all(10),
            indicatorWeight:2,
            labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),
          ),
        ),
        body: TabBarView(
          children: _tabpage,
        ),
      ),
    );
  }
}
