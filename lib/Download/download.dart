import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pinput/pinput.dart';
import 'package:play_it/Download/homepage.dart';

class Down extends StatefulWidget {
  const Down({Key? key}) : super(key: key);

  @override
  _DownState createState() => _DownState();
}

class _DownState extends State<Down> {
  var groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.arrow_back_outlined,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Download',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(width: 80),
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
            SizedBox(
              height: 250,
            ),
            Text(
              'No File',
              style: TextStyle(color: Colors.grey),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Home()),
                  (route) => false,
                );
              },
              child: Text(
                'Go To Download',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(primary: Colors.green),
            ),
            SizedBox(
              height: 230,
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
            body: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => Down()),
                          (route) => false,
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_outlined,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Privacy Folder',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    SizedBox(width: 80),
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
                      onSelected: (value){
                        if(value==0){
                          _setpassword();
                        }
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 0,
                          child: Text('Set Password'),
                        ),
                      ],
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
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (context) => Down()),
                              (route) => false,
                            );
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
        pageBuilder: (context,_,__) => SafeArea(
          child: Scaffold(
            body: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
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
                      'Change Password ',
                      style: TextStyle(fontSize: 20),
                    )
                  ],
                ),
                Container(
                  height: 100,
                  child: Pinput(
                    defaultPinTheme: PinTheme(
                      width: 56,
                      height: 56,
                      textStyle: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w600),
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                      showCursor: true,
                    animationCurve: Curves.fastOutSlowIn,
                    pinAnimationType: PinAnimationType.fade,
                    keyboardType: TextInputType.number,
                    closeKeyboardWhenCompleted: true,autofocus: true,
                     useNativeKeyboard: true,
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
