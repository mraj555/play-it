import 'package:flutter/material.dart';
import 'package:play_it/Video/main_page.dart';
import 'package:play_it/splash_screen.dart';


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
