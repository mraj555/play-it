
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:shared_storage/shared_storage.dart';

class jenil extends StatefulWidget {
  const jenil({Key? key}) : super(key: key);

  @override
  State<jenil> createState() => _jenilState();
}

class _jenilState extends State<jenil> {
  Future<File> _loadAsset() async {
    final sharedDirectory = await getExternalStoragePublicDirectory(EnvironmentDirectory.pictures);
    List f = sharedDirectory!
        .listSync(recursive: true,followLinks: true)
        .map((item) => item.path)
        .where((item) => item.endsWith(".jpg") || item.endsWith('.jpeg'))
        .toList(growable: false);
    print(f);
    File name = File(sharedDirectory.listSync().elementAt(4).path.toString());
     return name;
  }

  @override
  void initState() {
    _loadAsset();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: FutureBuilder<File>(
            future: _loadAsset(),
            builder: (context,AsyncSnapshot<File> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
              return Image.file(snapshot.data!);
            },
          ),
        ),
        );
  }
}
