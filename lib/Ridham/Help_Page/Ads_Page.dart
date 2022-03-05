import 'package:flutter/material.dart';

class Ads_Page extends StatefulWidget {
  const Ads_Page({Key? key}) : super(key: key);

  @override
  State<Ads_Page> createState() => _Ads_PageState();
}

class _Ads_PageState extends State<Ads_Page> {
  var _pagetitle=[
    "Ads interrupt using the app",
    "Ads content",
    "Always shows the ads",
    "Always show ads that i'm not interested in",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text(
          "New feature Request",
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: List.generate(
              4,
                  (index) {
                return Column(
                  children: [
                    ListTile(
                      title: Text(
                        _pagetitle[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Divider(
                      thickness: 0.4,
                      height: 2,
                      color: Colors.white.withOpacity(0.3),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
