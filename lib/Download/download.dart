import 'dart:io';

import 'package:disk_space/disk_space.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pinput/pinput.dart';
import 'package:play_it/Download/_Privacy.dart';
import 'package:play_it/Download/_add.dart';
import 'package:play_it/Download/_password.dart';
import 'package:play_it/Download/homepage.dart';
import 'package:play_it/Ridham/RateUs.dart';
import '../Nehal/Me/Downloadpage.dart';

class Down extends StatefulWidget {
  var password;

  Down({this.password});

  @override
  _DownState createState() => _DownState();
}

class _DownState extends State<Down> {
  var groupValue = 0;
  var contoller = TextEditingController();
  var newpasswordcontroller = TextEditingController();
  var newpassword = '';
  var error = 'Enter The PIN';
  var errorcolor = Colors.green;

  double _diskSpace = 0;
  double _disktotal = 0;

  @override
  void initState() {
    super.initState();
    initDiskSpace();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Download'),
          backgroundColor: Colors.black,
          actions: [
            IconButton(
              onPressed: () {
                if (widget.password == null) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Privacy()));
                } else {
                  _enterpassword();
                }
              },
              icon: ImageIcon(
                AssetImage('assets/Icons/privacy.png'),
                size: size.height * 0.2,
              ),
            ),
            IconButton(
              onPressed: () => Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => Add())),
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: size.height * 0.04,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Downloadpage()));
              },
              icon: ImageIcon(
                AssetImage('assets/Icons/setting.png'),
                size: size.height * 0.2,
              ),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: size.height * 0.2),
            Image.asset(
              'assets/Icons/emptybox.png',
              height: size.height * 0.2,
              width: size.width * 0.4,
            ),
            Text(
              'No File',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(height: size.height * 0.01),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Go To Download',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff2bc877), fixedSize: Size(180, 15)),
            ),
            SizedBox(height: size.height * 0.27),
            ListTile(
              tileColor: Colors.grey[700],
              onTap: () => _openstorage(filename: ''),
              title:  LinearProgressIndicator(
                minHeight: 3,
                value: _diskSpace /_disktotal,
                backgroundColor: Colors.white,
                color: Colors.green,
              ),
              subtitle: Text(
                  'Used ${_diskSpace.toStringAsFixed(2)}GB/${_disktotal.toStringAsFixed(2)}GB',
                  style: TextStyle(color: Colors.white, fontSize: 15)),
              leading: Icon(
                Icons.phone_android_sharp,
                color: Colors.white,
                size: 30,
              ),
              trailing: Icon(
                Icons.navigate_next_outlined,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  _enterpassword() {
    return Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text('Privacy Folder'),
            backgroundColor: Colors.black,
          ),
          body: ListView(
            children: [
              Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.width * 0.01),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '${error}',
                      style: TextStyle(
                          color: errorcolor,
                          fontSize: MediaQuery.of(context).size.width * 0.04),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.2,
                      child: Pinput(
                        length: 4,
                        controller: newpasswordcontroller,
                        defaultPinTheme: PinTheme(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.08,
                          textStyle: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.03,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(243, 239, 243, 0.4),
                            border: Border.all(
                                color: Color.fromRGBO(234, 239, 243, 1)),
                            borderRadius: BorderRadius.circular(
                                MediaQuery.of(context).size.width * 0.03),
                          ),
                        ),
                        obscureText: true,
                        showCursor: true,
                        autofocus: true,
                        closeKeyboardWhenCompleted: false,
                        onSubmitted: (value) {
                          setState(() {
                            print('${widget.password}');
                            newpassword = newpasswordcontroller.text;
                            print('${newpassword}');
                            if (widget.password == newpassword) {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Privacy(),
                                ),
                              );
                            }
                          });
                        },
                        onChanged: (value) {
                          setState(() {
                            value = newpassword;
                            error = 'Password doesn\'t Not Match !!';
                            errorcolor = Colors.red;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future _openstorage({required String filename}) async {
    final file = await pickFile();
    if (file == null) {
      return null;
    }
    ;
    print('Path:${file.path}');
    OpenFile.open(file.path);
  }

  Future<File?> pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result == null) {
      return null;
    }
    return File(result.files.first.path!);
  }

  Future<File?> downloadFile(String? name) async {
    final appStorage = await getApplicationDocumentsDirectory();
    final file = File('${appStorage.path}/$name');
    return file;
  }

  Future<void> initDiskSpace() async {
    double diskSpace = 0;
    double disktotal = 0;
    diskSpace = await DiskSpace.getFreeDiskSpace as double;
    disktotal = await DiskSpace.getTotalDiskSpace as double;

    setState(() {
      _disktotal = disktotal / 1024;
      _diskSpace = disktotal / 1024 - diskSpace / 1024;
    });
  }
}
