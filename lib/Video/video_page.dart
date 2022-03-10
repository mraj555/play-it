import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:play_it/Video/video_player_screen.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List<AssetEntity> assets = [];

  _fetchVideos() async {
    final video = await PhotoManager.getAssetPathList(type: RequestType.video);
    final allvideos = video.first;
    print(video.first);
    final videoAssets = await allvideos.getAssetListRange(
      start: 0,
      end: 100000,
    );

    setState(() {
      assets = videoAssets;
    });
  }

  @override
  void initState() {
    _fetchVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size= MediaQuery.of(context).size;
    // return GridView.builder(
    //   gridDelegate:
    //       SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
    //     itemCount: assets.length,
    //   itemBuilder: (context, index) {
    //     return FutureBuilder<Uint8List?>(
    //       future: assets[index].thumbData,
    //       builder: (context, snapshot) {
    //         final bytes = snapshot.data;
    //         if (bytes == null) {
    //           return CircularProgressIndicator();
    //         }
    //         return Image.memory(
    //           bytes,
    //           fit: BoxFit.cover,
    //         );
    //       },
    //     );
    //   },
    // );
    return Scaffold(
      body: ListView.builder(
        itemCount: assets.length,
        itemBuilder: (context, index) => FutureBuilder<Uint8List?>(
          future: assets[index].thumbData,
          builder: (context, snapshot) {
            List title = assets[index].relativePath!.split('/').toList();
            final bytes = snapshot.data;
            if (bytes == null) {
              return CircularProgressIndicator();
            }
            return InkWell(
              onTap: () {
                setState(
                  () {
                    print(assets[index].relativePath.toString());
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) =>
                            VideoPlayerScreen(file: assets[index].file),
                      ),
                    );
                  },
                );
              },
              child: Container(
                margin: EdgeInsets.only(left: 20,top: 5,bottom: 5),
                alignment: Alignment.center,
                height: size.height * 0.12,
                width: size.width * 0.06,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: size.height * 0.115,
                      width: size.width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        image: DecorationImage(
                          image: MemoryImage(bytes),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.all(1),
                            margin: EdgeInsets.fromLTRB(
                                0, 0, size.width * 0.012, size.width * 0.012),
                            decoration: BoxDecoration(
                              color: Colors.black54,
                              borderRadius: BorderRadius.circular(2),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.play_arrow_rounded,
                                  color: Colors.white,
                                  size: size.width * 0.035,
                                ),
                                Text(
                                  assets[index].videoDuration.inHours == 0
                                      ? "${assets[index].videoDuration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${assets[index].videoDuration.inSeconds.remainder(60).toString().padLeft(2, '0')}"
                                      : '${assets[index].videoDuration.inHours.toString().padLeft(2, '0')}:${assets[index].videoDuration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${assets[index].videoDuration.inSeconds.remainder(60).toString().padLeft(2, '0')}',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: size.width * 0.025),
                                ),
                              ],
                            ),
                          ),
                        ],
                        alignment: Alignment.bottomRight,
                      ),
                    ),
                    SizedBox(
                      width: size.width *0.03,
                    ),
                    Container(
                      width: size.width * 0.45,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            // assets[index].relativePath.toString(),
                            assets[index].title!.toString(),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.005,
                          ),
                          Text(
                            assets[index].orientatedSize.toString(),
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(1),
                                  color: Colors.white.withOpacity(0.15),
                                ),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ClipRRect(
                                      child: Image.asset(
                                        assets[index]
                                                .relativePath!
                                                .contains('WhatsApp')
                                            ? 'assets/Icons/whatsapp.png'
                                            : assets[index]
                                                    .relativePath!
                                                    .contains('Camera')
                                                ? 'assets/Icons/camera.png'
                                                : assets[index]
                                                        .relativePath!
                                                        .contains('Snapchat')
                                                    ? 'assets/Icons/snapchat.png'
                                                    : assets[index]
                                                            .relativePath!
                                                            .contains('UC')
                                                        ? 'assets/Icons/uc.png'
                                                        : assets[index]
                                                                .relativePath!
                                                                .contains('Movie')
                                                            ? 'assets/Icons/movie.png'
                                                            : assets[index]
                                                                    .relativePath!
                                                                    .contains(
                                                                        'Instagram')
                                                                ? 'assets/Icons/ig.png'
                                                                : 'assets/Icons/vf.png',
                                        height: 17,
                                        width: 17,
                                      ),
                                    ),
                                    Text(
                                      assets[index]
                                              .relativePath!
                                              .contains('WhatsApp')
                                          ? ' WhatsApp'
                                          : assets[index]
                                                  .relativePath!
                                                  .contains('Camera')
                                              ? ' Camera'
                                              : assets[index]
                                                      .relativePath!
                                                      .contains('Snapchat')
                                                  ? ' Snapchat'
                                                  : assets[index]
                                                          .relativePath!
                                                          .contains('UC')
                                                      ? ' UC Browser'
                                                      : assets[index]
                                                              .relativePath!
                                                              .contains('Movie')
                                                          ? ' Movies'
                                                          : assets[index]
                                                                  .relativePath!
                                                                  .contains(
                                                                      'Instagram')
                                                              ? ' Instagram'
                                                              : title.elementAt(
                                                                  title.length -
                                                                      2),
                                      style: GoogleFonts.inter(
                                          color: Colors.grey, fontSize: 11),
                                    ),
                                  ],
                                ),
                              ),
                              InkWell(
                                onTap: () {},
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 21,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}