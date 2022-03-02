import 'package:flutter/material.dart';
import 'package:play_it/Appbar/my_title.dart';
import 'package:play_it/Video/_video.dart';
import 'package:play_it/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      home: MyVideo(),
    ),
  );
}
