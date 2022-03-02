import 'package:flutter/material.dart';
import 'package:play_it/homepage.dart';

import 'Madhav/Appbar/my_title.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Colors.black),
        scaffoldBackgroundColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
       home: MyTitle(),
      //home: Home(),
    ),
  );
}
