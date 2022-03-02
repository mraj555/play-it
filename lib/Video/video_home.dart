import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Madhav/Appbar/my_search.dart';

class HomeVideo extends StatefulWidget {
  const HomeVideo({Key? key}) : super(key: key);

  @override
  State<HomeVideo> createState() => _HomeVideoState();
}

class _HomeVideoState extends State<HomeVideo> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://64.media.tumblr.com/c90100fd260e77796e397f07d1771d34/fd850e41fad78fd6-86/s400x600/f15e520227c7dd8b471d729a48f26080712d8250.gifv'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          elevation: 0,
          title: Stack(
            children: [
              Row(
                children: [
                  Text(
                    'PLAY',
                    style: GoogleFonts.archivoBlack(
                      color: Colors.white,
                      fontSize: 21,
                    ),
                  ),
                  Text(
                    'it',
                    style: GoogleFonts.archivoBlack(
                      color: Colors.white,
                      fontSize: 19,
                    ),
                  ),
                ],
              ),
              Positioned(
                left: size.width * 0.166,
                top: size.width * 0.022,
                width: 4.4,
                child: Container(
                  height: 3.5,
                  width: 3,
                  color: Colors.red,
                ),
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Mysearch(),
                  ),
                );
              },
              icon: Icon(Icons.search),
              splashRadius: 20,
            ),
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage('assets/Icons/download_1.png'),
                size: 24,
              ),
              splashRadius: 20,
            ),
          ],
        ),
      ),
    );
  }
}
