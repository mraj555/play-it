import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

import '../All songs/audio_player_screen.dart';

class Artist extends StatefulWidget {
  const Artist({Key? key}) : super(key: key);

  @override
  State<Artist> createState() => _ArtistState();
}

class _ArtistState extends State<Artist> {
  static final _audioQuery = OnAudioQuery();

  _path() async {
    List<ArtistModel> path = await _audioQuery.queryArtists();
    var a = path.map((e) => e.artist);
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
      body: FutureBuilder<List<SongModel>>(
        future: _audioQuery.querySongs(
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
            itemBuilder: (context, index) => Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => AudioPlayerScreen(
                          file: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                  title: Text(snapshot.data![index].artist.toString(),
                      style: TextStyle(color: Colors.white), maxLines: 1),
                  subtitle: Text('${snapshot.data![index].album}',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      textWidthBasis: TextWidthBasis.parent),
                  trailing: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.grey,
                    size: 13,
                  ),
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 0.2,
                  height: 0.5,
                  endIndent: 15,
                  indent: 15,
                ),
              ],
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
