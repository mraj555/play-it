import 'package:flutter/material.dart';

class FAQ_Page extends StatefulWidget {
  const FAQ_Page({Key? key}) : super(key: key);

  @override
  State<FAQ_Page> createState() => _FAQ_PageState();
}

class _FAQ_PageState extends State<FAQ_Page> {
  var _videoList = [];

  var _currentitem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      body: Column(
        children: [
          ListTile(
            title: Text("Video"),
          ),
        ],
      ),
    );
  }
}
