import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../All songs/audio_player_screen.dart';

class Album extends StatefulWidget {
  const Album({Key? key}) : super(key: key);

  @override
  State<Album> createState() => _AlbumState();
}

class _AlbumState extends State<Album> {
  static final _audioQuery = OnAudioQuery();

  _path() async {
    List<AlbumModel> path = await _audioQuery.queryAlbums();
    var a = path.map((e) => e.album);
    print(a);
    return path;
  }

  @override
  void initState() {
    _path();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<List<AlbumModel>>(
        future: _audioQuery.queryAlbums(
          sortType: null,
          orderType: OrderType.ASC_OR_SMALLER,
          uriType: UriType.EXTERNAL,
          ignoreCase: true,
        ),
        builder: (context, snapshot) {
          if (snapshot.data == null) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data!.isEmpty) {
            return Text(
              "No Songs found",
              style: TextStyle(color: Colors.white),
            );
          }
          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => AudioPlayerScreen(
                //       file: snapshot.data![index],
                //     ),
                //   ),
                // );
              },
              leading: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  QueryArtworkWidget(
                      id: snapshot.data![index].id,
                      type: ArtworkType.ALBUM,
                      artworkBorder: BorderRadius.circular(3),
                      nullArtworkWidget: Image.asset(
                        'assets/Audio/album.png',
                        fit: BoxFit.fill,
                      )),
                  Image.asset(
                    'assets/Audio/vz.png',
                    fit: BoxFit.fill,
                    height: 50,
                  )
                ],
              ),
              title: Text(snapshot.data![index].album.toString(),
                  style: TextStyle(color: Colors.white), maxLines: 1),
              subtitle: Text('${snapshot.data![index].artist}',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textWidthBasis: TextWidthBasis.parent),
              trailing: IconButton(
                splashRadius: 20,
                icon: Icon(
                  Icons.arrow_forward_ios_outlined,
                  color: Colors.grey,
                  size: 13,
                ),
                onPressed: () {},
              ),
            ),
          );
        },
      ),
      // ListView.builder(
      //     itemCount: 1,
      //     itemBuilder: (context, index) =>
      //         ListTile(
      //           onTap: (){},
      //
      //           title: Text('Album',style: TextStyle(color: Colors.white),),
      //           subtitle: Text('Songs',style: TextStyle(color: Colors.grey),),
      //           trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.grey,size: 13,),
      //         ),
      // ),
    );
  }
}
