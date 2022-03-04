import 'package:flutter/material.dart';

class Audiopage extends StatefulWidget {
  const Audiopage({Key? key}) : super(key: key);

  @override
  State<Audiopage> createState() => _AudiopageState();
}

class _AudiopageState extends State<Audiopage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        backgroundColor: Color(0xff0E0E0E),
        centerTitle: true,
        title: Text(
          "Audio",
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Audio duration",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Over 30s audiuo are  shown.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
            trailing: Text(
              '30s',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Manage your scan list",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Hide or show audio foders in PLAYit.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
