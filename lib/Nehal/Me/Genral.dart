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
  var _groupValue = 0;

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
            onTap: () => showDialog(
              context: context,
              builder: (context) => Dialog(
                backgroundColor: Colors.grey[850],
                child: StatefulBuilder(
                  builder: (context, setState) => Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: 150,
                        child: Column(
                          children: [
                            Padding(
                              padding:EdgeInsets.only(right: 170,top: 10),
                              child: Text('Language',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 20)),
                            ),
                            RadioListTile(
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                activeColor: Colors.green,
                                title: Text('System default',
                                    style: TextStyle(color: Colors.white)),
                                value: 1,
                                groupValue: _groupValue,
                                onChanged: (value) {
                                  setState(() {
                                    _groupValue = value as int;
                                  });
                                }),
                            RadioListTile(
                                activeColor: Colors.green,
                                controlAffinity:
                                    ListTileControlAffinity.trailing,
                                title: Text('English ',
                                    style: TextStyle(color: Colors.white)),
                                value: 2,
                                groupValue: _groupValue,
                                onChanged: (value) {
                                  setState(() {
                                    _groupValue = value as int;
                                  });
                                }),
                          ],
                        ),
                      ),
                      Container(
                        height: 200,
                        color: Colors.grey[900],
                      ),
                      Container(
                        alignment: Alignment.bottomRight,
                        height: 40,
                        color: Colors.grey[850],
                        child: TextButton(
                            child: Text('Cancel',
                                style: TextStyle(color: Colors.green,fontSize: 15)),
                            onPressed: () {Navigator.pop(context);}),
                      ),
                    ],
                  ),
                ),
              ),
            ),
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
              style:
                  TextStyle(color: Colors.white.withOpacity(0.5), fontSize: 13),
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
