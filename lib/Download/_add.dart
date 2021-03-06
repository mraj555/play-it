import 'dart:io';
import 'dart:isolate';
import 'dart:ui';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

class Add extends StatefulWidget {
  const Add({Key? key}) : super(key: key);

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  var addlinkcontoller = TextEditingController();
  String url =
      'http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4';
  ReceivePort _receivePort = ReceivePort();
  @override
  void initState() {
    IsolateNameServer.registerPortWithName(_receivePort.sendPort, 'name');
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 10,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://64.media.tumblr.com/c90100fd260e77796e397f07d1771d34/fd850e41fad78fd6-86/s400x600/f15e520227c7dd8b471d729a48f26080712d8250.gifv'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          title: Text(
            'Add Download Link',
            style: TextStyle(color: Colors.white, fontSize: size.width * 0.045),
          ),
          actions: [
            GestureDetector(
                onTap: () => _btFile(),
                child: Image.asset(
                  'assets/Icons/pdf.png',
                  height: size.height * 0.1,
                  width: size.width * 0.1,
                )),
            IconButton(
              onPressed: () => _search(),
              icon: Icon(
                Icons.search_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(top: 10),
                  alignment: Alignment.topLeft,
                  height: size.height * 0.2,
                  width: size.width * 0.9,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(size.height * 0.01),
                    color: Colors.grey[850],
                  ),
                  margin: EdgeInsets.all(size.width * 0.02),
                  child: TextField(
                    maxLines: 3,
                    autofocus: true,
                    style: TextStyle(color: Colors.white),
                    cursorHeight: size.height * 0.03,
                    controller: addlinkcontoller,
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: size.width * 0.02),
                        hintText:
                            'Enter The Magnet ,HTTP Or The URL of Torrent',
                        hintStyle: TextStyle(
                            color: Colors.grey, fontSize: size.width * 0.043),
                        border: InputBorder.none),
                    cursorColor: Colors.green,
                    onChanged: (value) {
                      setState(() {
                        // url = addlinkcontoller.text;
                      });
                    },
                  ),
                ),
                ElevatedButton.icon(
                  onPressed: addlinkcontoller.text.isNotEmpty? (){}:null,
                  icon: Icon(
                    Icons.download,
                    color: Colors.white,
                  ),
                  label: Text(
                    'Download',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(Size(320, 40)),
                    backgroundColor: MaterialStateProperty.resolveWith(
                      (states) {
                        if (states.contains(MaterialState.disabled)) {
                          return Color(0xff1d6b43);
                        } else {
                          return Color(0xff2bc877);
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
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

  _btFile() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Text(
              'Open torrent files',
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
          ),
          body: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'Storage',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                onTap: () => _storage(filename: 'All'),
                leading: Icon(
                  Icons.phone_android_sharp,
                  size: 40,
                  color: Colors.white,
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  'Internal Storage',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              ListTile(
                leading: Icon(
                  Icons.sd_card,
                  size: 40,
                  color: Colors.white,
                ),
                trailing: Icon(
                  Icons.keyboard_arrow_right_sharp,
                  size: 20,
                  color: Colors.white,
                ),
                title: Text(
                  'Memory Card',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future _storage({required String filename}) async {
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
}

Future<File?> downloadFile(String? name) async {
  final appStorage = await getApplicationDocumentsDirectory();
  final file = File('${appStorage.path}/$name');
  return file;
}
