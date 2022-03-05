import 'package:flutter/material.dart';

class Fuaturepage extends StatefulWidget {
  const Fuaturepage({Key? key}) : super(key: key);

  @override
  State<Fuaturepage> createState() => _FuaturepageState();
}

class _FuaturepageState extends State<Fuaturepage> {
  var _pagetitle = [
    "About video player",
    "About music player",
    "About flie management",
    "About privacy",
    "About casting",
    "ios version",
    "Others",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "Bug report",
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: List.generate(
              7,
              (index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        _pagetitle[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      thickness: 0.4,
                      height: 2,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
