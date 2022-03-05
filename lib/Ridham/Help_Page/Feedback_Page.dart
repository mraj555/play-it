import 'package:flutter/material.dart';
import 'package:play_it/Ridham/Help_Page/Ads_Page.dart';
import 'package:play_it/Ridham/Help_Page/Bug_Page.dart';
import 'package:play_it/Ridham/Help_Page/Feature_Request_page.dart';

class Feedback_Page extends StatefulWidget {
  const Feedback_Page({Key? key}) : super(key: key);

  @override
  State<Feedback_Page> createState() => _Feedback_PageState();
}

class _Feedback_PageState extends State<Feedback_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Bugpage()));
            },
            child: ListTile(
              title: Text("Bug report",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
            ),
          ),
          Divider(
            thickness: 0.4,
            height: 2,
            color: Colors.white.withOpacity(0.3),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Fuaturepage()));
            },
            child: ListTile(
              title: Text("New feature Request",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
            ),
          ),
          Divider(
            thickness: 0.4,
            height: 2,
            color: Colors.white.withOpacity(0.3),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Fuaturepage()));
            },
            child: ListTile(
              title: Text("Subscription/VIP issue",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
            ),
          ),
          Divider(
            thickness: 0.4,
            height: 2,
            color: Colors.white.withOpacity(0.3),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ads_Page()));
            },
            child: ListTile(
              title: Text("Ads complaint",style: TextStyle(color: Colors.white),),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white,size: 15,),
            ),
          ),
          Divider(
            thickness: 0.4,
            height: 2,
            color: Colors.white.withOpacity(0.3),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ads_Page()));
            },
            child: ListTile(
              title: Text("Suggesions",style: TextStyle(color: Colors.white),),
            ),
          ),
          Divider(
            thickness: 0.4,
            height: 2,
            color: Colors.white.withOpacity(0.3),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ads_Page()));
            },
            child: ListTile(
              title: Text("Say thanks",style: TextStyle(color: Colors.white),),
            ),
          ),
          Divider(
            thickness: 0.4,
            height: 2,
            color: Colors.white.withOpacity(0.3),
          ),
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Ads_Page()));
            },
            child: ListTile(
              title: Text("Others",style: TextStyle(color: Colors.white),),
            ),
          ),
          Divider(
            thickness: 0.4,
            height: 2,
            color: Colors.white.withOpacity(0.3),
          ),
        ],
      ),
    );
  }
}
