import 'dart:io';
import 'package:disk_space/disk_space.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:play_it/Download/_Privacy.dart';
import 'package:play_it/Download/_add.dart';
import 'package:play_it/Download/_newpassword.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../Nehal/Me/Downloadpage.dart';

class Down extends StatefulWidget {
  @override
  _DownState createState() => _DownState();
}

class _DownState extends State<Down> {
  var groupValue = 0;
  late SharedPreferences _preferences;
  double _diskSpace = 0;
  double _disktotal = 0;
  var password;

  @override
  void initState() {
    super.initState();
    initDiskSpace();
    gettdata();
  }

  gettdata() async {
    _preferences = await SharedPreferences.getInstance();
    password = _preferences.getString('pass');
    return password;
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
                if (password == null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Privacy(),
                    ),
                  );
                } else {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Newpassword(),
                    ),
                  );
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
            SizedBox(height: size.height * 0.02),
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
            Spacer(),
            InkWell(
              onTap: () {
                _openstorage(filename: '');
              },
              child: Container(
                color: Colors.grey.withOpacity(0.5),
                padding: EdgeInsets.fromLTRB(5, 0, 10, 0),
                height: size.height * 0.07,
                child: Row(
                  children: [
                    Icon(
                      Icons.phone_android_sharp,
                      color: Colors.white,
                      size: 35,
                    ),
                    SizedBox(
                      width: size.width * 0.01,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SliderTheme(
                          child: Slider(
                            min: 0,
                            max: _disktotal,
                            activeColor: Colors.green,
                            inactiveColor: Colors.white,
                            value: _diskSpace,
                            onChanged: (value) {},
                          ),
                          data: SliderThemeData(
                            trackHeight: 1.5,
                            thumbShape: SliderComponentShape.noThumb,
                            overlayShape: SliderComponentShape.noThumb,
                          ),
                        ),
                        SizedBox(
                          height: size.height * 0.01,
                        ),
                        Text(
                            'Used ${_diskSpace.toStringAsFixed(2)}GB/${_disktotal.toStringAsFixed(2)}GB',
                            style:
                                TextStyle(color: Colors.white, fontSize: 11)),
                      ],
                    ),
                    Spacer(),
                    Icon(
                      Icons.navigate_next_outlined,
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ),
          ],
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
