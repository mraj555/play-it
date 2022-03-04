import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static final _audioQuery = OnAudioQuery();

  void requestPermission() async {
    var status = await Permission.storage.status;
    if(!status.isGranted) {
      await Permission.storage.request();
    }
  }

  Future<List<String>> names = _audioQuery.queryAllPath();


  @override
  void initState() {
    requestPermission();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(_audioQuery.);
    return Scaffold(
      appBar: AppBar(
        title: Text('Music Player 2022'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
        ],
      ),
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
              leading: QueryArtworkWidget(
                id: snapshot.data![index].id,
                type: ArtworkType.AUDIO,
              ),
              title: Text(snapshot.data![index].displayNameWOExt,
                  style: TextStyle(color: Colors.white)),
              subtitle: Text('${snapshot.data![index].artist}',
                  style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.more_vert),
            ),
          );
        },
      ),
    );
  }
}
