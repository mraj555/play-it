import 'package:flutter/material.dart';
import 'package:play_it/Download/download.dart';
import 'package:play_it/Madhav/audio_player_screen.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';
import 'package:play_it/Video/main_page.dart';
import 'package:play_it/Madhav/audio_page.dart';
import 'package:play_it/Video/video_page.dart';

import 'Download/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(Colors.white)),
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Myme(),
    ),
  );
}
