import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:play_it/Madhav/audio_player_screen.dart';
import 'package:play_it/Ridham/RateUs.dart';

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
              onTap: () {},
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
                icon: Icon(Icons.more_vert, color: Colors.white),
                onPressed: () => showModalBottomSheet(
                  backgroundColor: Colors.grey[800],
                  context: context,
                  builder: (context) => SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        _name.length,
                        (index) => ListTile(
                          onTap:()
                          {
                            Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => AudioPlayerScreen(
                                    file: snapshot.data![index],
                                  ),
                                ),
                            );
                          },
                          title: Text(
                            _name[index],
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          leading: Icon(_icons[index], color: Colors.blueGrey[100],size: 25,),
                        ),
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
