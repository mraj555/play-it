import 'package:flutter/material.dart';

class Mygeneral extends StatefulWidget {
  const Mygeneral({Key? key}) : super(key: key);

  @override
  State<Mygeneral> createState() => _MygeneralState();
}

class _MygeneralState extends State<Mygeneral> {
  var switch1 = false;
  var switch2 = false;
  var switch3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Color(0xff0E0E0E),
        title: Text(
          'General',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Language",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'System default',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Do not show my history",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Not show watching history on the homepage.',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
            trailing: Switch(
              value: switch1,
              onChanged: (value) {
                setState(() {
                  switch1 = value;
                });
              },
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey.withOpacity(0.3),
              inactiveTrackColor: Colors.grey,
            ),

          ),
          ListTile(
            title: Text(
              "Show bookmarks",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Show the bookmarks in sites on the Homepage.',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.5),
                  fontSize: 13
              ),
            ),
            trailing: Switch(
              value: switch2,
              onChanged: (value) {
                setState(() {
                  switch2 = value;
                });
              },
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey.withOpacity(0.3),
              inactiveTrackColor: Colors.grey,
            ),

          ),
          ListTile(
            title: Text(
              "Receive push messages",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'System default',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
            trailing: Switch(
              value: switch3,
              onChanged: (value) {
                setState(() {
                  switch3 = value;
                });
              },
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey.withOpacity(0.3),
              inactiveTrackColor: Colors.grey,
            ),

          ),
        ],
      ),
    );
  }
}
