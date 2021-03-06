import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:photo_manager/photo_manager.dart';
import 'package:play_it/Video/video_player_screen.dart';
import 'package:share_plus/share_plus.dart';
import 'package:shimmer_animation/shimmer_animation.dart';

class VideoPage extends StatefulWidget {
  var isList;

  VideoPage({Key? key, required this.isList}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  List<AssetEntity> assets = [];

  _fetchVideos() async {
    final video = await PhotoManager.getAssetPathList(type: RequestType.video);
    final allvideos = video.first;
    final videoAssets = await allvideos.getAssetListRange(
      start: 0,
      end: allvideos.assetCount,
    );

    setState(() {
      assets = videoAssets;
    });
  }

  List prop = ['Title', 'Resolution', 'Format', 'Path', 'Duration', 'Date'];

  List _name = [
    'Convert to mp3',
    'Background play',
    'Favourite',
    'File Transfer',
    'Add to playlist',
    'Move into Privacy Folder',
    'Rename',
    'Delete',
    'File Info',
    'Mute play',
    'Share',
  ];

  List _icons = [
    'mp3.png',
    'bgp.png',
    'favourite.png',
    'ft.png',
    'pl.png',
    'lock.png',
    'rename.png',
    'del.png',
    'info.png',
    'mute.png',
    'share.png'
  ];

  @override
  void initState() {
    _fetchVideos();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return widget.isList == false
        ? GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
                crossAxisSpacing: 1,
                mainAxisSpacing: 3),
            itemCount: assets.length,
            itemBuilder: (context, index) {
              return FutureBuilder<Uint8List?>(
                future: assets[index].thumbData,
                builder: (context, snapshot) {
                  final bytes = snapshot.data;
                  if (bytes == null) {
                    return Shimmer(
                      color: Colors.grey,
                      enabled: true,
                      direction: ShimmerDirection.fromLeftToRight(),
                      duration: Duration(seconds: 3),
                      interval: Duration(seconds: 5),
                      child: Container(
                        color: Colors.grey.shade900,
                        height: size.height * 0.12,
                        width: size.width * 0.06,
                        margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                      ),
                    );
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
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
                              Align(
                                alignment: Alignment.bottomLeft,
                                child: ClipRRect(
                                  child: Image.asset(
                                    assets[index]
                                                .relativePath!
                                                .contains('WhatsApp') ||
                                            assets[index]
                                                .relativePath!
                                                .contains('What\'s app')
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
                                    height: 18,
                                    width: 18,
                                  ),
                                ),
                              ),
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
                        Container(
                          width: size.width * 0.47,
                          // color: Colors.white,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width * 0.40,
                                child: Text(
                                  // assets[index].relativePath.toString(),
                                  assets[index].title!.toString(),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.inter(
                                    color: Colors.white,
                                    fontSize: size.width * 0.03,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.grey[800],
                                    context: context,
                                    builder: (context) =>
                                        DraggableScrollableSheet(
                                      maxChildSize: 0.5,
                                      expand: false,
                                      builder: (_, controller) {
                                        return Container(
                                          child: ListView.builder(
                                            controller: controller,
                                            itemCount: _name.length,
                                            itemBuilder: (context, ind) =>
                                                ListTile(
                                              onTap: () async {
                                                if (ind == 8) {
                                                  _fileinfo([
                                                    assets[index].title!,
                                                    '${assets[index].width}X${assets[index].height}',
                                                    assets[index].mimeType!,
                                                    assets[index].relativePath!,
                                                    assets[index]
                                                                .videoDuration
                                                                .inHours ==
                                                            0
                                                        ? "${assets[index].videoDuration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${assets[index].videoDuration.inSeconds.remainder(60).toString().padLeft(2, '0')}"
                                                        : '${assets[index].videoDuration.inHours.toString().padLeft(2, '0')}:${assets[index].videoDuration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${assets[index].videoDuration.inSeconds.remainder(60).toString().padLeft(2, '0')}',
                                                    '${DateFormat('yyyy-MM-dd hh:mm:ss a').format(assets[index].modifiedDateTime)}',
                                                  ]);
                                                }
                                                if (ind == 10) {
                                                  final video =
                                                      await assets[index].file;
                                                  await Share.shareFiles(
                                                    [video!.path],
                                                  );
                                                }
                                              },
                                              title: Text(
                                                _name[ind],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              leading: ImageIcon(
                                                AssetImage('assets/Video/' +
                                                    _icons[ind]),
                                                color: Colors.blueGrey[100],
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.more_vert,
                                  color: Colors.white,
                                  size: 21,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          )
        : Scaffold(
            body: ListView.builder(
              itemCount: assets.length,
              itemBuilder: (context, index) => FutureBuilder<Uint8List?>(
                future: assets[index].thumbData,
                builder: (context, snapshot) {
                  List title = assets[index].relativePath!.split('/').toList();
                  final bytes = snapshot.data;
                  if (bytes == null) {
                    return Shimmer(
                      color: Colors.grey,
                      enabled: true,
                direction: ShimmerDirection.fromLeftToRight(),
                duration: Duration(seconds: 3),
                interval: Duration(seconds: 5),
                child: Container(
                  color: Colors.grey.shade900,
                  height: size.height * 0.12,
                  width: size.width * 0.06,
                  margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
                ),
              );
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
                margin: EdgeInsets.only(left: 20, top: 5, bottom: 5),
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
                      width: size.width * 0.03,
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
                                                    .contains('WhatsApp') ||
                                                assets[index]
                                                    .relativePath!
                                                    .contains('What\'s app')
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
                                                                .contains(
                                                                    'Movie')
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
                                                  .contains('WhatsApp') ||
                                              assets[index]
                                                  .relativePath!
                                                  .contains('What\'s app')
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
                                onTap: () {
                                  showModalBottomSheet(
                                    isScrollControlled: true,
                                    backgroundColor: Colors.grey[800],
                                    context: context,
                                    builder: (context) =>
                                        DraggableScrollableSheet(
                                      maxChildSize: 0.5,
                                      expand: false,
                                      builder: (_, controller) {
                                        return Container(
                                          child: ListView.builder(
                                            controller: controller,
                                            itemCount: _name.length,
                                            itemBuilder: (context, ind) =>
                                                ListTile(
                                              onTap: () async {
                                                if (ind == 8) {
                                                  _fileinfo([
                                                    assets[index].title!,
                                                    '${assets[index].width}X${assets[index].height}',
                                                    assets[index].mimeType!,
                                                    assets[index].relativePath!,
                                                    assets[index]
                                                                .videoDuration
                                                                .inHours ==
                                                            0
                                                        ? "${assets[index].videoDuration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${assets[index].videoDuration.inSeconds.remainder(60).toString().padLeft(2, '0')}"
                                                        : '${assets[index].videoDuration.inHours.toString().padLeft(2, '0')}:${assets[index].videoDuration.inMinutes.remainder(60).toString().padLeft(2, '0')}:${assets[index].videoDuration.inSeconds.remainder(60).toString().padLeft(2, '0')}',
                                                    '${DateFormat('yyyy-MM-dd hh:mm:ss a').format(assets[index].modifiedDateTime)}',
                                                  ]);
                                                }
                                                if (ind == 10) {
                                                  final video =
                                                      await assets[index].file;
                                                  await Share.shareFiles(
                                                    [video!.path],
                                                  );
                                                }
                                              },
                                              title: Text(
                                                _name[ind],
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                              leading: ImageIcon(
                                                AssetImage('assets/Video/' +
                                                    _icons[ind]),
                                                color: Colors.blueGrey[100],
                                                size: 25,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  );
                                },
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

  _fileinfo(List<String> info) {
    showDialog(
      context: context,
      builder: (context) {
        Size size = MediaQuery.of(context).size;
        return SimpleDialog(
          backgroundColor: Colors.black.withOpacity(0.7),
          title: Text('Information'),
          titleTextStyle: GoogleFonts.inter(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xff2bc877),
          ),
          children: [
            Container(
              padding: EdgeInsets.only(left: size.width * 0.05, right: 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  6,
                  (index) => Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.only(bottom: 8),
                        width: size.width * 0.25,
                        child: Text(
                          prop[index],
                          style: GoogleFonts.inter(color: Colors.white),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          width: size.width * 0.5,
                          padding: EdgeInsets.only(bottom: 8),
                          child: Text(
                            info[index],
                            style: GoogleFonts.inter(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ).toList(),
              ),
            ),
            ButtonBar(
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                  ),
                  onPressed: () => Navigator.pop(context),
                  child: Text(
                    'Close',
                    style: GoogleFonts.inter(
                      color: Color(0xff2bc877),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
