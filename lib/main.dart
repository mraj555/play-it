import 'package:flutter/material.dart';
import 'package:play_it/Madhav/Appbar/my_title.dart';
import 'package:play_it/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      debugShowCheckedModeBanner: false,
      home: MyTitle(),
    ),
  );
}
