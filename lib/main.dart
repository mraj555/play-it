import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:play_it/Madhav/Appbar/my_title.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';
import 'package:play_it/Video/main_page.dart';
import 'Download/homepage.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    ),
  );
}
