import 'package:flutter/material.dart';
import 'package:play_it/Ridham/RateUs.dart';

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
            onTap: () => _path(),
            title: Text(
              "Download path settings",
              style: TextStyle(color: Colors.white),
            ),
            subtitle: Text(
              'Storage/PLAYit/download',
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
              "Max BT seeding upload (kb/s)",
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

  _path() {
    var _groupvalue = 0;
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
              title: Text('Storage'),
              centerTitle: true,
              backgroundColor: Colors.black),
          body: StatefulBuilder(
            builder: ((context, setState) => Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Storage',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 100,
                      color: Colors.grey[850],
                      child: RadioListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        activeColor: Colors.green,
                        title: Text('Phone Storage',style: TextStyle(
                            color: Colors.green)),
                        secondary: Icon(Icons.phone_android_sharp,
                            size: 40, color: Colors.white),
                        onChanged: (value) {
                          setState(() {
                            _groupvalue = value as int;
                          });
                        },
                        value: 1,
                        groupValue: _groupvalue,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      alignment: Alignment.center,
                      height: 100,
                      color: Colors.grey[850],
                      child: RadioListTile(
                        controlAffinity: ListTileControlAffinity.trailing,
                        activeColor: Colors.green,
                        title: Text('Memory Storage',style: TextStyle(
                            color: Colors.green)),
                        secondary: Icon(Icons.sd_card_rounded,
                            size: 40, color: Colors.white),
                        onChanged: (value) {
                          setState(() {
                            _groupvalue = value as int ;
                            showDialog(
                                context: context,
                                builder: (context) => AlertDialog(
                                      backgroundColor: Colors.grey[850],
                                      title: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text('Due To android',
                                                style: TextStyle(
                                                    color: Colors.green,fontSize: 15)),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                              'Policy,Downloaded files will be cleared if PLAYit is Uninstalled',
                                              style: TextStyle(
                                                  color: Colors.white,fontSize: 15)),
                                          ButtonBar(
                                            children: [
                                              TextButton(
                                                onPressed: () {
                                                  Navigator.pop(context);
                                                },
                                                child: Text(
                                                  'OK',
                                                  style: TextStyle(
                                                      color: Colors.green),
                                                ),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ));
                          });
                        },
                        value: 2,
                        groupValue: _groupvalue,
                      ),
                    ),
                  ],
                )
            ),
          ),
        ),
      ),
    );
  }
}
