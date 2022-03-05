import 'package:flutter/material.dart';

class Subscription_Page extends StatefulWidget {
  const Subscription_Page({Key? key}) : super(key: key);

  @override
  State<Subscription_Page> createState() => _Subscription_PageState();
}

class _Subscription_PageState extends State<Subscription_Page> {
  var _pagetitle=[
    "Fail to subscribe",
    "Already paid but the vip doesn't go into effect",
    "Fail to cancel subscription",
    "Other",
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
