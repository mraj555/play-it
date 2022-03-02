import 'package:flutter/material.dart';

class Mysearch extends StatefulWidget {
  const Mysearch({Key? key}) : super(key: key);

  @override
  _MysearchState createState() => _MysearchState();
}

class _MysearchState extends State<Mysearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextField(
          autofocus: true,
          style: TextStyle(color: Colors.white),
          cursorColor: Color(0xff2bc877),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.only(left: -8),
            hintText: 'Youtube,Video,Music,Url',
            hintStyle: TextStyle(color: Color(0xffb7b6b6), fontSize: 15),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'SEARCH',
              style: TextStyle(
                color: Color(0xff2bc877),
              ),
            ),
          )
        ],
      ),
    );
  }
}
