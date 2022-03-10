import 'package:flutter/material.dart';
class Suggest extends StatefulWidget {
  const Suggest({Key? key}) : super(key: key);

  @override
  State<Suggest> createState() => _SuggestState();
}

class _SuggestState extends State<Suggest> {
  final PageController controller=PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller,
          children: [
            Center(child: Text('1',style: TextStyle(color: Colors.white),),),
            Center(child: Text('2'),),
            Center(child: Text('3'),),
      ]),
    );
  }
}
