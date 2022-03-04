import 'package:flutter/material.dart';

class Aboutpage extends StatefulWidget {
  const Aboutpage({Key? key}) : super(key: key);

  @override
  State<Aboutpage> createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        backgroundColor: Color(0xff0E0E0E),
        centerTitle: true,
        title: Text(
          'About us',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}
