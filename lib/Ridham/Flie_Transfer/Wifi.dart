import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyWIFI extends StatefulWidget {
  const MyWIFI({Key? key}) : super(key: key);

  @override
  _MyWIFIState createState() => _MyWIFIState();
}

class _MyWIFIState extends State<MyWIFI> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white10,
          appBar: AppBar(
            backgroundColor: Colors.white10,
            title: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 1),
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(Icons.arrow_back,
                        size: 30,
                        // color: Colors.black,
                        color: Colors.white),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Center(
                  child: Text(
                    'Wi-Fi',
                  ),
                ),
              ],
            ),
            //Text('Wi-Fi'),backgroundColor: Colors.black87,
          ),
          body:
          // Padding(
          //   padding: const EdgeInsets.only(top: 30, left: 290),
          //   child:
          Column(
            children: [
              // ListTile(
              //   title: Padding(
              //     padding: const EdgeInsets.only(left: 30,top: 30),
              //     child: Text(
              //       'wi-fi',
              //       style: TextStyle(color: Colors.white,fontSize: 30 ),
              //     ),
              //   ),
              //   leading: Padding(
              //     padding: const EdgeInsets.only(top: 300),
              //     child: Divider(
              //       thickness: 1,
              //       color: Colors.white10,
              //     ),
              //   ),
              // )
              Padding(
                padding: const EdgeInsets.only(right:270,top: 30),
                child:
                Text(
                  'Wi - Fi',
                  style: TextStyle(color: Colors.white,fontSize: 20),
                ),
              ),

              SizedBox(
                height: 2,
                child: Padding(
                  padding:  EdgeInsets.only(left: 270),
                  child: Switch(
                    activeColor: Colors.blue,
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                        print(isSwitched);
                      }
                      );
                    },
                    // activeTrackColor: Colors.blue,
                    // activeColor: Colors.white,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Divider(
                  thickness: 1,color: Colors.white10,
                ),
              ),
            ],
          ),
          //)
        ));
  }
}
