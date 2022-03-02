import 'package:flutter/material.dart';
import 'package:play_it/Video/_video.dart';
import 'Download/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: MyVideo(),
    ),
  );
}
