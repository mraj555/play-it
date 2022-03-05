import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  const Converter({Key? key}) : super(key: key);

  @override
  State<Converter> createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        backgroundColor: Color(0xff0E0E0E),
        centerTitle: true,
        title: Text("MP3 Converter"),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: IconButton(
          onPressed: () {},
          icon: Icon(Icons.add,size: 30,),
        ),
        onPressed: () {},
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/Icons/emptybox.png',
              height: 150,
              width: 150,
            ),
            Text(
              'No more songs',
              style: TextStyle(color: Colors.white, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
