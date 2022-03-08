import 'package:flutter/material.dart';
import 'package:play_it/Download/_password.dart';
import 'package:play_it/Download/download.dart';
import 'package:play_it/Ridham/RateUs.dart';

class Privacy extends StatefulWidget {
  const Privacy({Key? key}) : super(key: key);

  @override
  State<Privacy> createState() => _PrivacyState();
}

class _PrivacyState extends State<Privacy> {
  var groupValue = 0;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back, color: Colors.white),
        //   onPressed: () => Navigator.pushReplacement(
        //       context, MaterialPageRoute(builder: (context) => Down())),
        // ),
        title: Text('Privacy Folder'),
        actions: [
          IconButton(
            onPressed: () => showDialog(
              context: context,
              builder: (context) => StatefulBuilder(
                builder: (context, setState) => Dialog(
                  backgroundColor: Colors.grey.shade700,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              top: size.width * 0.03, left: size.width * 0.03),
                          child: Text(
                            'Sort By',
                            style: TextStyle(
                                color: Colors.green,
                                fontSize: size.height * 0.03),
                          ),
                        ),
                        RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: Text(
                              'Date',
                              style: TextStyle(color: Colors.white),
                            ),
                            activeColor: Colors.green,
                            value: 1,
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value as int;
                              });
                            }),
                        RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: Text(
                              'Name',
                              style: TextStyle(color: Colors.white),
                            ),
                            activeColor: Colors.green,
                            value: 2,
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value as int;
                              });
                            }),
                        RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: Text(
                              'Size',
                              style: TextStyle(color: Colors.white),
                            ),
                            activeColor: Colors.green,
                            value: 3,
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value as int;
                              });
                            }),
                        RadioListTile(
                            controlAffinity: ListTileControlAffinity.trailing,
                            title: Text(
                              'Length',
                              style: TextStyle(color: Colors.white),
                            ),
                            activeColor: Colors.green,
                            value: 4,
                            groupValue: groupValue,
                            onChanged: (value) {
                              setState(() {
                                groupValue = value as int;
                              });
                            }),
                        ButtonBar(
                          children: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'Cancel',
                                  style: TextStyle(color: Colors.grey[200]),
                                )),
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  'OK',
                                  style: TextStyle(color: Colors.green),
                                ))
                          ],
                        )
                      ]),
                ),
              ),
            ),
            icon: ImageIcon(
              AssetImage('assets/Icons/sort.png'),
              size: size.height * 0.04,
            ),
          ),
          PopupMenuButton(
            enabled: true,
            onSelected: (value) {
              if (value == 0) {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Password()));
              }
            },
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Text('Set Password'),
              ),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: size.width * 0.1,
        ),
        backgroundColor: Colors.green,
      ),
    );
  }
}
