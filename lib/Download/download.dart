import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pinput/pinput.dart';
import 'package:play_it/Download/homepage.dart';

class Down extends StatefulWidget {
  @override
  _DownState createState() => _DownState();
}

class _DownState extends State<Down> {
  var groupValue = 0;
  var contoller = TextEditingController();
  var password = '';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Download'),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () => _Openfile(),
              icon: Icon(
                Icons.folder_open,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => _openadd(),
              icon: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 240,
            ),
            Text(
              'No File',
              style: TextStyle(color: Colors.grey),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Go To Download',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            SizedBox(
              height: 200,
            ),
            ListTile(
              onTap: () {},
              leading: Icon(
                Icons.phone_android_sharp,
                color: Colors.white,
              ),
              trailing: Icon(Icons.navigate_next_outlined),
            ),
          ],
        ),
      ),
    );
  }

  _Openfile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text('Privacy Folder'),
              actions: [
                IconButton(
                  onPressed: () => showDialog(
                    context: context,
                    builder: (context) => StatefulBuilder(
                      builder: (context, setState) => Dialog(
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 10, left: 10),
                                child: Text(
                                  'Sort By',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 18),
                                ),
                              ),
                              RadioListTile(
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  title: Text('Date'),
                                  activeColor: Colors.green,
                                  value: 1,
                                  groupValue: groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue = value as int;
                                    });
                                  }),
                              RadioListTile(
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  title: Text('Name'),
                                  activeColor: Colors.green,
                                  value: 2,
                                  groupValue: groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue = value as int;
                                    });
                                  }),
                              RadioListTile(
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  title: Text('Size'),
                                  activeColor: Colors.green,
                                  value: 3,
                                  groupValue: groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue = value as int;
                                    });
                                  }),
                              RadioListTile(
                                  controlAffinity:
                                      ListTileControlAffinity.trailing,
                                  title: Text('Length'),
                                  activeColor: Colors.green,
                                  value: 4,
                                  groupValue: groupValue,
                                  onChanged: (value) {
                                    setState(() {
                                      groupValue = value as int;
                                    });
                                  }),
                              Divider(
                                color: Colors.green,
                                indent: 20,
                                endIndent: 20,
                              ),
                            ]),
                      ),
                    ),
                  ),
                  icon: Icon(
                    Icons.grid_view,
                    color: Colors.white,
                  ),
                ),
                PopupMenuButton(
                  enabled: true,
                  onSelected: (value) {
                    if (value == 0) {
                      _setpassword();
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
                size: 30,
              ),
              backgroundColor: Colors.green,
            ),
          ),
        ),
      ),
    );
  }

  _openadd() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SafeArea(
          child: Scaffold(
            body: ListView(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back_outlined,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'Add Download Link',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.insert_drive_file_rounded,
                            color: Colors.blue,
                          ),
                        ),
                        IconButton(
                          onPressed: () => _search(),
                          icon: Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      height: 200,
                      width: 350,
                      color: Colors.black,
                      margin: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: 10),
                            hintText:
                                'Enter The Magnet ,HTTP Or The URL of Torrent',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 15),
                            border: InputBorder.none),
                        cursorColor: Colors.green,
                      ),
                    ),
                    Container(
                      height: 50,
                      width: 340,
                      color: Colors.green,
                      child: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.download,
                          color: Colors.white,
                        ),
                        label: Text(
                          'Download',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  _search() {
    return showDialog(
      context: context,
      builder: (context) => StatefulBuilder(
        builder: (context, setState) => Dialog(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10),
                  child: Text(
                    'Search',
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                ),
                TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.green)),
                      border: UnderlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.green))),
                  cursorColor: Colors.green,
                ),
                ButtonBar(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Cancel',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.green),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _setpassword() {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, _, __) => SafeArea(
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text('Change Password'),
            ),
            body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100,
                  child: Pinput(
                    controller: contoller,
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    obscureText: true,
                    showCursor: true,
                    autofocus: true,
                    closeKeyboardWhenCompleted: false,
                    onSubmitted: (value) {
                      setState(() {
                        password=contoller.text;
                      });
                      showDialog(
                        context: context,
                        builder: (context) => Dialog(
                              elevation: 10,
                              backgroundColor: Colors.grey[850],
                              child: Padding(
                                padding:  EdgeInsets.only(left: 20,top: 20),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text(
                                      'Dear Users,\nThe PIN Of Your Privacy Folder Is:',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    Text(
                                      '$password',
                                      style: TextStyle(
                                          color: Colors.green, fontSize: 20
                                      ),
                                    ),
                                    Text(
                                      'Please Keep Your Password In Mind !',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                    ButtonBar(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              contoller.clear();
                                              Navigator.pop(context);
                                            },
                                            child: Text(
                                              'Sure',
                                              style:
                                                  TextStyle(color: Colors.green,fontSize: 18),
                                            ))
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),);},
                    onChanged: (value) {
                      setState(() {
                        value = password;
                      });
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
