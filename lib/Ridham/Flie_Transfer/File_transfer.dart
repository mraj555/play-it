import 'package:flutter/material.dart';
import 'package:play_it/Ridham/Flie_Transfer/recevie.dart';
import 'package:play_it/Ridham/Flie_Transfer/sead.dart';

class MyFlieTransfer extends StatefulWidget {
  const MyFlieTransfer({Key? key}) : super(key: key);

  @override
  State<MyFlieTransfer> createState() => _MyFlieTransferState();
}

class _MyFlieTransferState extends State<MyFlieTransfer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) =>MySeadflie()));
              },
              child: Container(
                width: 100,
                height: 100,
                child: ClipRRect(
                  child: Image.asset("assets/Icons/send.webp"),
                ),
              ),
            ),
            Text(
              "Sead",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 150,
            ),
            GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Myrecevie()));
              },
              child: Container(
                width: 100,
                height: 100,
                child: ClipRRect(
                  child: Image.asset("assets/Icons/receive.webp"),
                ),
              ),
            ),
            Text(
              "Recevie",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
