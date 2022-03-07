import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Aboutpage extends StatefulWidget {
  const Aboutpage({Key? key}) : super(key: key);

  @override
  State<Aboutpage> createState() => _AboutpageState();
}

class _AboutpageState extends State<Aboutpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        backgroundColor: Color(0xff0E0E0E),
        centerTitle: true,
        title: Text(
          'About us',
          style: TextStyle(fontSize: 25),
        ),
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.network(
                'https://sg-res.9appsinstall.com/sg/res/jpg/f8/1b/9d040350ec8e74e93e6f2df32a9b-qde3.jpg',
                height: 60,
                width: 60,
              ),
              Image.asset(
                "assets/Icons/logo.png",
                height: 60,
                width: 120,
              ),
              Text(
                '2.5.9.7.5',
                style: TextStyle(color: Colors.white.withOpacity(0.5)),
              ),
              Padding(
                padding: EdgeInsets.only(top: 30),
                child: ListTile(
                  tileColor: Colors.grey.withOpacity(0.4),
                  contentPadding: EdgeInsets.only(left: 10),
                  leading: Icon(
                    Icons.supervisor_account,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Join our group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.4),
                contentPadding: EdgeInsets.only(left: 10),
                leading: Icon(
                  Icons.system_update_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Check for update',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.4),
                contentPadding: EdgeInsets.only(left: 10),
                leading: Icon(
                  Icons.share,
                  color: Colors.white,
                ),
                title: Text(
                  'Share PLAYit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.4),
                contentPadding: EdgeInsets.only(left: 10),
                leading: Icon(
                  Icons.rectangle,
                  color: Colors.white,
                ),
                title: Text(
                  'Like us on instagram',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.4),
                contentPadding: EdgeInsets.only(left: 10),
                leading: Icon(
                  Icons.tv,
                  color: Colors.white,
                ),
                title: Text(
                  'Official PLAYit Wabsite',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.4),
                contentPadding: EdgeInsets.only(left: 10),
                leading: Icon(
                  Icons.ondemand_video,
                  color: Colors.white,
                ),
                title: Text(
                  'Youtube Chennal',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              ListTile(
                tileColor: Colors.grey.withOpacity(0.4),
                contentPadding: EdgeInsets.only(left: 10),
                leading: Icon(
                  Icons.thumb_up_alt_outlined,
                  color: Colors.white,
                ),
                title: Text(
                  'Thank You',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top: 10),
                child: Text('Privacy Policy',style: TextStyle(color: Color(0xff3AC27B),fontSize:16),),
              ),
              Padding(
                padding:EdgeInsets.only(top:5),
                child: Text('2021 Mediapro Team.All rights reserved.',style: TextStyle(color: Colors.white.withOpacity(0.5),fontSize:16),),
              ),

            ],
          ),
        ],
      ),
    );
  }
}
