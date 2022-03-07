import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({Key? key}) : super(key: key);

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E0E0E),
      appBar: AppBar(
        backgroundColor: Color(0xff0E0E0E),
        centerTitle: true,
        title: Text("History"),
      ),
    );
  }
}
