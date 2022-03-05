import 'package:flutter/material.dart';

class Bugpage extends StatefulWidget {
  const Bugpage({Key? key}) : super(key: key);

  @override
  State<Bugpage> createState() => _BugpageState();
}

class _BugpageState extends State<Bugpage> {
  var _pagetitle = [
    "Local video",
    "Online video",
    "Music player",
    "Downloader problem",
    "Plugin issues",
    "Privacy folder",
  ];

  var _pagetitle1=[
    "File deletion",
    "File display",
    "Sites",
    "Crash & App not respond",
    "Casting",
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
            children: [
              Column(
                children: List.generate(
                  6,
                  (index) {
                    return Column(
                      children: [
                        ListTile(
                          title: Text(
                            _pagetitle[index],
                            style: TextStyle(color: Colors.white),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 15,
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
              ListTile(
                title: Text(
                  "Transfer",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(
                thickness: 0.4,
                height: 2,
                color: Colors.white.withOpacity(0.3),
              ),
              Column(
                children: List.generate(5, (index) {
                  return Column(
                    children: [
                      ListTile(
                        title: Text(
                          _pagetitle1[index],
                          style: TextStyle(color: Colors.white),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 15,
                        ),
                      ),
                      Divider(
                        thickness: 0.4,
                        height: 2,
                        color: Colors.white.withOpacity(0.3),
                      ),
                    ],
                  );
                }),
              ),
              ListTile(
                title: Text(
                  "UI & UX design",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(
                thickness: 0.4,
                height: 2,
                color: Colors.white.withOpacity(0.3),
              ),
              ListTile(
                title: Text(
                  "Others",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Divider(
                thickness: 0.4,
                height: 2,
                color: Colors.white.withOpacity(0.3),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
