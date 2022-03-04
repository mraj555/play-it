import 'package:flutter/material.dart';

class Videopage extends StatefulWidget {
  const Videopage({Key? key}) : super(key: key);

  @override
  State<Videopage> createState() => _VideopageState();
}

class _VideopageState extends State<Videopage> {
  var switch1 = true;
  var switch2 = true;
  var switch3 = true;
  var switch4 = true;
  var switch5 = true;
  var switch6 = false;
  var switch7 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff0E0E0E),
        centerTitle: true,
        title: Text(
          'Video',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 300),
                child: Text(
                  'Display',
                  style: TextStyle(color: Colors.green, fontSize: 14),
                ),
              ),
              ListTile(
                title: Text(
                  "Show video name",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Display video headlines on the homepage.',
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
                  "Video screen orientation",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Set the default video screen orientation.',
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
                  'Hide or show video foders in PLAYit',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(right: 290),
                child: Text('Playback',style: TextStyle(color: Colors.green),),
              ),
              ListTile(
                title: Text(
                  "Youtube pop-up play",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Select whether to play youtube videos in pop-up window',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Subtitle Customization",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Apply subtitle custom settings to all videos.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
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
                  "Resume",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Rasume from the point where you stopped.',
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
              ListTile(
                title: Text(
                  "Gesture operation",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Control video settings by gestures in playing.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
                trailing: Switch(
                  value: switch4,
                  onChanged: (value) {
                    setState(() {
                      switch4 = value;
                    });
                  },
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.grey.withOpacity(0.3),
                  inactiveTrackColor: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  "Continuous play",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'play the next video automatically after one ends.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
                trailing: Switch(
                  value: switch5,
                  onChanged: (value) {
                    setState(() {
                      switch5 = value;
                    });
                  },
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.grey.withOpacity(0.3),
                  inactiveTrackColor: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  "Auto pop-up play",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Continue playing in the floating window when you switch to other apps.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
                trailing: Switch(
                  value: switch6,
                  onChanged: (value) {
                    setState(() {
                      switch6 = value;
                    });
                  },
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.grey.withOpacity(0.3),
                  inactiveTrackColor: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  "Double-tab to seek",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '10',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
              ),
              ListTile(
                title: Text(
                  "Long press accelerator",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  'Long press the screen to increase the playback speed.',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 11,
                  ),
                ),
                trailing: Switch(
                  value: switch7,
                  onChanged: (value) {
                    setState(() {
                      switch7 = value;
                    });
                  },
                  activeColor: Colors.green,
                  inactiveThumbColor: Colors.grey.withOpacity(0.3),
                  inactiveTrackColor: Colors.grey,
                ),
              ),
              ListTile(
                title: Text(
                  "Long press playback speed",
                  style: TextStyle(color: Colors.white),
                ),
                subtitle: Text(
                  '2.0x',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 13,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
