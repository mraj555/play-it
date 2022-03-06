import 'package:flutter/material.dart';
import 'package:play_it/Download/download.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';
import 'package:play_it/Video/main_page.dart';
import 'package:play_it/Video/undefined.dart';
import 'package:play_it/Video/video_page.dart';

import 'Download/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Myme(),
    ),
  );
}
