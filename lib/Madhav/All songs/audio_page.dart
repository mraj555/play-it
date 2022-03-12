import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';


import 'audio_player_screen.dart';

class AudioPage extends StatefulWidget {
  const AudioPage({Key? key}) : super(key: key);

  @override
  State<AudioPage> createState() => _AudioPageState();
}

class _AudioPageState extends State<AudioPage> {
  static final _audioQuery = OnAudioQuery();

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

  List _name = [
    'Play Now',
    'Play Next',
    'Set as ringtone',
    'add to playlist',
    'File Transfer',
    'Rename',
    'Favorite',
    'Delete',
    'File Info',
  ];
  List<IconData> _icons = [
    Icons.play_circle_outline,
    Icons.skip_next_outlined,
    Icons.notifications_none,
    Icons.playlist_add,
    Icons.drive_file_move_outline,
    Icons.edit_outlined,
    Icons.star_border,
    Icons.delete_outline_outlined,
    Icons.info_outline_rounded,
  ];

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
            itemBuilder: (context, index) => ListTile(
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
              leading: Text(
                '${index + 1}',
                style: TextStyle(color: Colors.white),
              ),
              title: Text(snapshot.data![index].displayNameWOExt,
                  style: TextStyle(color: Colors.white), maxLines: 1),
              subtitle: Text('${snapshot.data![index].artist}',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                  textWidthBasis: TextWidthBasis.parent),
              trailing: IconButton(
                splashRadius: 20,
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: () => showModalBottomSheet(
                  backgroundColor: Colors.grey[800],
                  context: context,
                  builder: (context) => ListView.builder(
                    itemCount: _name.length,
                    itemBuilder: (context, ind) => ListTile(
                      onTap: () {
                        if (ind == 0) {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => AudioPlayerScreen(
                                file: snapshot.data![index],
                              ),
                            ),
                          );
                        }
                        if(ind==4){

                        }
                      },
                      title: Text(
                        _name[ind],
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                      leading: Icon(
                        _icons[ind],
                        color: Colors.blueGrey[100],
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}