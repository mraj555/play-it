import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class Myrecevie extends StatefulWidget {
  const Myrecevie({Key? key}) : super(key: key);

  @override
  State<Myrecevie> createState() => _MyrecevieState();
}

class _MyrecevieState extends State<Myrecevie> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            QrImage(
              data: controller.text,
              size: 200,
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 100,
            ),
            TextFormField(
              autofocus: false,
              style: TextStyle(fontSize: 15.0, color: Colors.black),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Username',
                filled: true,
                fillColor: Colors.grey,
                contentPadding: const EdgeInsets.only(
                    left: 14.0, bottom: 6.0, top: 8.0),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                suffixIcon: IconButton(icon: Icon(Icons.done), onPressed: () => setState(() {

                }),)
              ),
            ),
          ],
        ),
      ),
    );
  }
}
