import 'package:flutter/material.dart';
import 'package:play_it/Download/homepage.dart';
import 'package:play_it/Madhav/All%20songs/audio_page.dart';
import 'package:play_it/Video/main_page.dart';

import 'Madhav/All songs/audio_page.dart';

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
