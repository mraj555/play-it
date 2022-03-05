import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:photo_manager/photo_manager.dart';

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
    return ListView.builder(
      itemCount: assets.length,
      itemBuilder: (context, index) => FutureBuilder<Uint8List?>(
        future: assets[index].thumbData,
        builder: (context, snapshot) {
          final bytes = snapshot.data;
          if (bytes == null) {
            return CircularProgressIndicator();
          }
          return Container(
            margin: EdgeInsets.only(left: 20),
            height: 150,
            width: 350,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 110,
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    image: DecorationImage(
                      image: MemoryImage(bytes),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: 100,
                      child: Text(
                        // assets[index].title.toString().replaceAll('.mp4', '').toString(),
                        assets[index].title!.split('.').first.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Chip(
                        backgroundColor: Colors.black.withOpacity(0.9),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        avatar: assets[index].relativePath!.contains('WhatsApp')
                            ? CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://assets.stickpng.com/images/580b57fcd9996e24bc43c543.png'),

                              )
                            : null,
                        label: Text('WhatsApp',style:TextStyle(color: Colors.grey,fontSize: 12),),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
