import 'package:flutter/cupertino.dart';
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
      body: Column(
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 165,top: 30),
            child: Image.network('https://sg-res.9appsinstall.com/sg/res/jpg/f8/1b/9d040350ec8e74e93e6f2df32a9b-qde3.jpg',height: 70,width: 70,),
          ),
        ],
      ),
    );
  }
}
