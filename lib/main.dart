import 'package:flutter/material.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:play_it/Video/main_page.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterDownloader.initialize();
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
