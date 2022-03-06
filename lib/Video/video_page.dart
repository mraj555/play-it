import 'dart:typed_data';

import 'package:flutter/material.dart';
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

    setState(() {
    });
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
                margin: EdgeInsets.only(left: 20, bottom: 20),
                height: 110,
                width:size.width *0.06 ,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 110,
                      width: size.width *0.43,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        image: DecorationImage(
                          image: MemoryImage(bytes),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: size.width *0.03,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          width: size.width *0.4,
                          child: Text(
                            assets[index].relativePath.toString(),
                            // assets[index]
                            //     .title
                            //     .toString()
                            //     .replaceAll('.mp4', '')
                            //     .toString(),
                            // assets[index].title!.split('.').first.toString(),
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(assets[index].orientatedSize.toString(),style: TextStyle(color: Colors.white),),
                        Container(
                          padding: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(1),
                            color: Colors.white.withOpacity(0.15),
                          ),
                          child: Row(
                            children: [
                              assets[index].relativePath!.contains('WhatsApp')
                                  ? ClipRRect(
                                      child: Image.asset(
                                        'assets/Icons/whatsapp.png',
                                        height: 16,
                                        width: 16,
                                      ),
                                    )
                                  : assets[index]
                                          .relativePath!
                                          .contains('Camera')
                                      ? ClipRRect(
                                          child: Image.asset(
                                            'assets/Icons/camera.png',
                                            height: 16,
                                            width: 16,
                                          ),
                                        )
                                      : ClipRRect(
                                child: Image.asset(
                                  'assets/Icons/vf.png',
                                  height: 16,
                                  width: 16,
                                ),
                              ),
                              Text(
                                ' WhatsApp',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                              ),
                            ],
                          ),
                        ),
                      ],
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
