import 'package:flutter/material.dart';
import 'package:play_it/Video/main_page.dart';
import 'package:play_it/Video/video_playlist.dart';

import 'Madhav/audio_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        radioTheme: RadioThemeData(fillColor: MaterialStateProperty.all(Colors.white),),
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}
