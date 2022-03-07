import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final Future<File?> file;

  const VideoPlayerScreen({Key? key, required this.file}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  VideoPlayerController? _controller;
  bool initialized = false;

  @override
  void initState() {
    _initvideo();
    super.initState();
  }

  _initvideo() async {
    final video = await widget.file;
    _controller = VideoPlayerController.file(video!);

    _controller!.addListener(
      () {
        setState(
          () {},
        );
      },
    );
    _controller!.removeListener(
      () {
        setState(
          () {},
        );
      },
    );
    _controller!.setLooping(false);
    _controller!.initialize().then((value) => setState(() {}));
    _controller!.play();
  }

  @override
  void dispose() {
    _controller!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: _controller!.value.isInitialized
              ? AspectRatio(
                  aspectRatio: _controller!.value.aspectRatio,
                  child: VideoPlayer(_controller!),
                )
              : Container(
                  child: Text(
                    widget.file.toString(),
                    style: TextStyle(color: Colors.white),
                  ),
                ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller!.value.isPlaying
                  ? _controller!.pause()
                  : _controller!.play();
            });
          },
          child: Icon(
            _controller!.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ),
    );
  }
}
