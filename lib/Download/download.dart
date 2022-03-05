import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:play_it/Download/_Privacy.dart';
import 'package:play_it/Download/homepage.dart';
import '../Nehal/Me/Downloadpage.dart';

class Down extends StatefulWidget {
  @override
  _DownState createState() => _DownState();
}

class _DownState extends State<Down> {
  var groupValue = 0;
  var contoller = TextEditingController();
  TextEditingController addlinkcontoller = TextEditingController();

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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Privacy()));
              },
              icon: ImageIcon(
                AssetImage('assets/Icons/privacy.png'),
                size: size.height * 0.2,
              ),
            ),
            IconButton(
              onPressed: () => _openadd(),
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
            SizedBox(height: size.height * 0.3),
            ListTile(
              tileColor: Colors.grey[700],
              onTap: () {},
              leading: Icon(
                Icons.phone_android_sharp,
                color: Colors.white,
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

  _openadd() {
    Size size = MediaQuery.of(context).size;
    Navigator.push(
      context,PageRouteBuilder(
      pageBuilder: (context,_,__,) =>
       SafeArea(
          child: Scaffold(appBar: AppBar(
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
              style: TextStyle(
                  color: Colors.white,
                  fontSize: size.height * 0.03),
            ),
            actions: [
              GestureDetector(
                  onTap: () => _btfile(),
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
                      alignment: Alignment.topLeft,
                      height: size.height * 0.2,
                      width: size.width * 0.9,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(size.height * 0.01),
                        color: Colors.grey[850],
                      ),
                      margin: EdgeInsets.all(size.width *0.02),
                      child: TextField(
                        cursorHeight: size.height * 0.03,
                        controller: addlinkcontoller,
                        decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(left: size.width *0.02),
                            hintText:
                                'Enter The Magnet ,HTTP Or The URL of Torrent',
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: size.width * 0.04),
                            border: InputBorder.none),
                        cursorColor: Colors.green,
                        onChanged: (value) {
                          setState(() {
                            value = addlinkcontoller.text;
                          });
                        },
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed:addlinkcontoller.text.isNotEmpty ? () {}:null,
                      icon: Icon(
                        Icons.download,
                        color: Colors.white,
                      ),
                      label: Text(
                        'Download',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xff2bc877),
                        fixedSize: Size(320, 50),
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

  _btfile() {
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
                onTap: () {},
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
                onTap: () {},
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
}
