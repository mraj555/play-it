import 'package:flutter/material.dart';
import 'package:play_it/Appbar/my_title.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';
import 'package:play_it/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: Myme(),
    ),
  );
}
