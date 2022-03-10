import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VideoPlaylist extends StatefulWidget {
  const VideoPlaylist({Key? key}) : super(key: key);

  @override
  State<VideoPlaylist> createState() => _VideoPlaylistState();
}

class _VideoPlaylistState extends State<VideoPlaylist> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10, 5, 10, 0),
            child: Container(
              alignment: Alignment.center,
              height: 150,
              width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.asset(
                            'assets/Icons/playlist.png',
                            height: 110,
                            width: size.width * 0.45,
                          ),
                        ),
                        Image.asset(
                          'assets/Icons/line.png',
                          fit: BoxFit.fill,
                          height: 85,
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Favourite Videos',
                        style: GoogleFonts.inter(color: Colors.white),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        '0 Files',
                        style: GoogleFonts.inter(color: Colors.grey),
                      )
                    ],
                  ),
                  Spacer(),
                  Center(
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      color: Colors.grey,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
