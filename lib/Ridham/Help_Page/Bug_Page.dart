import 'package:flutter/material.dart';

class Bugpage extends StatefulWidget {
  const Bugpage({Key? key}) : super(key: key);

  @override
  State<Bugpage> createState() => _BugpageState();
}

class _BugpageState extends State<Bugpage> {
  var _pagetitle=[
    "Local video",
    "Online video",
    "Music player",
    "Downloader problem",
    "Plugin issues",
    "Privacy folder",
    "Transfer",
    "File deletion",
    "File display",
    "Sites",
    "Crash & App not respond",
    "Casting",
    "UI & UX design",
    "Others",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text("Bug report",),
      ),
      body: ListView(
        children: [
          Column(
            children:
              List.generate(6, (index) {
                return ListTile(
                  title:Text(_pagetitle[index],style: TextStyle(color: Colors.white),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 15,),
                );
              })
          ),
        ],
      ),
    );
  }
}
