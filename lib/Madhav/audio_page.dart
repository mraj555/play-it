import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:play_it/Madhav/audio_player_screen.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  final _audioQuery = OnAudioQuery();

  _path() async {
    List<SongModel> path = await _audioQuery.querySongs();
    var a = path.map((e) => e.data);
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
    print(_audioQuery.queryAllPath());
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
            itemBuilder: (context, index) => ListTile(
              onTap: () {
                setState(
                  () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => AudioPlayerScreen(
                          /*file: snapshot.data![index].data.toString()*/
                          file: snapshot.data![index],
                        ),
                      ),
                    );
                  },
                );
              },
              leading: Text(
                '${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
              title: Text(snapshot.data![index].displayNameWOExt,
                  style: TextStyle(color: Colors.white), maxLines: 1),
              subtitle: Text('${snapshot.data![index].artist}',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textWidthBasis: TextWidthBasis.parent),
              trailing: Icon(Icons.more_vert, color: Colors.white),
            ),
          );
        },
      ),
    );
  }
}
