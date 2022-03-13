import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
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
  List info = [
    'Title',
    'Album',
    'Artist',
    'Duration',
    'Format',
    'Path',
    'Date',
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
                        if(ind==1){

                        }
                        if (ind == 8) {
                          print(snapshot.data![index].dateModified!);
                          final path = snapshot.data![index].data;
                          print(DateTime.fromMillisecondsSinceEpoch((snapshot.data![index].dateModified!)*1000,isUtc: false));
                          _openinfo([
                            snapshot.data![index].title,
                            snapshot.data![index].album!,
                            snapshot.data![index].artist!,
                            '${((snapshot.data![index].duration!~/(60*1000))%60).toString().padLeft(2,'0')}:${(snapshot.data![index].duration!~/1000)%60}',
                            snapshot.data![index].fileExtension,
                            path.substring(0, path.lastIndexOf('/')),
                            '${DateFormat('yyyy-MM-dd hh:mm:ss a').format(DateTime.fromMillisecondsSinceEpoch(snapshot.data![index].dateModified!*1000,isUtc: false))}',
                            ]);
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

  _openinfo(List<String> details) {
    showDialog(
        context: context,
        builder: (context) {
          return SimpleDialog(
            title: Text('Information'),
            children: [
              Container(
                padding: EdgeInsets.only(right: 10,left: 10),
                child: Column(
                  children: List.generate(
                    info.length,
                    (index) => Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(bottom: 10),
                          width: 100,
                          child: Text(info[index]),
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10),
                        child: Text(details[index]),
                      ),
                    ),
                  ],
                ),
              ).toList()),
            ),
          ],
        );
      },
    );
  }
}
