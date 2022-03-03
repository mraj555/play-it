import 'package:flutter/material.dart';
import 'package:play_it/Nehal/Me/Mehomepage.dart';

class Vip_Page extends StatefulWidget {
  const Vip_Page({Key? key}) : super(key: key);

  @override
  State<Vip_Page> createState() => _Vip_PageState();
}

class _Vip_PageState extends State<Vip_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff181F27),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30,left: 05,right: 05),
              child: Stack(
                children: [
                  ClipRRect(
                      child: Image.asset("assets/me/AA6.jpg"),
                      borderRadius: BorderRadius.circular(20),
                      ),
                  Padding(
                        padding: const EdgeInsets.only(top: 13.5,left: 3),
                        child: InkWell(
                          splashColor: Colors.white,
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Myme()));
                          },
                            child: Icon(Icons.arrow_back,color: Color(0xffF1C278),size: 32,)),
                      ),
                  Padding(
                         padding: const EdgeInsets.only(left: 311,top: 4.5),
                         child: PopupMenuButton(
                             itemBuilder: (context){
                           return [
                             PopupMenuItem(child: Text("Redeem Code")),
                             PopupMenuItem(child: Text("Sub Restore"))
                           ];
                         }),
                       ),
                    ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: ClipRRect(
                child: Image.asset("assets/me/AA7.jpg"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 150,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Icon(Icons.bookmark,color: Colors.redAccent,size: 45,),
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 100,
                      width: 150,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
