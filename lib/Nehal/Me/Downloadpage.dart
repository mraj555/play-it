import 'package:flutter/material.dart';

class Downloadpage extends StatefulWidget {
  const Downloadpage({Key? key}) : super(key: key);

  @override
  State<Downloadpage> createState() => _DownloadpageState();
}

class _DownloadpageState extends State<Downloadpage> {
  var Switch1 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        backgroundColor: Color(0xff0E0E0E),
        centerTitle: true,
        title: Text(
          'Download Settings',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text(
              "Download path settings",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Storage/PLAYit/downlod',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Max download tasks",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Text(
              '3',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Download over wifi only",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Switch(
              value: Switch1,
              onChanged: (value) {
                setState(() {
                  Switch1 = value;
                });
              },
              activeColor: Colors.green,
              inactiveThumbColor: Colors.grey.withOpacity(0.3),
              inactiveTrackColor: Colors.grey,
            ),
          ),
          ListTile(
            title: Text(
              "Max BT Download speed (kb/s)",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              '0:no limit',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
            trailing: Text(
              '0',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),
          ListTile(
            title: Text(
              "Max BT sedding upload (kb/s)",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              '0:no limit',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
                fontSize: 13,
              ),
            ),
            trailing: Text(
              '0',
              style: TextStyle(
                color: Colors.white.withOpacity(0.5),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
