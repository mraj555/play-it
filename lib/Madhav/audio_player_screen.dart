import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class AudioPlayerScreen extends StatefulWidget {
  final String file;

  const AudioPlayerScreen({Key? key, required this.file}) : super(key: key);

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen> {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = Duration();
  Duration position = Duration();

  bool playing = false;

  @override
  void initState() {
    audioPlayer.play(widget.file);
    playing = true;

    audioPlayer.onDurationChanged.listen(
          (Duration dd) {
        setState(
              () {
            duration = dd;
          },
        );
      },
    );
    audioPlayer.onAudioPositionChanged.listen(
          (Duration dd) {
        setState(
              () {
            position = dd;
          },
        );
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          padding: EdgeInsets.all(20),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image(image: AssetImage('assets/Icons/ic_launcher.png')),
              slider(),
              InkWell(
                onTap: () {
                  getAudio();
                },
                child: Icon(
                  playing == false
                      ? Icons.play_circle_fill_outlined
                      : Icons.pause_circle_filled_outlined,
                  color: Colors.blue,
                  size: 100,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget slider() {
    return Slider.adaptive(
      min: 0.0,
      value: position.inSeconds.toDouble(),
      max: duration.inSeconds.toDouble(),
      onChanged: (double value) {
        setState(
          () {
            audioPlayer.seek(Duration(seconds: value.toInt()));
          },
        );
      },
    );
  }

  void getAudio() async {
    // advancePlayer.play(widget.file);

    print(playing);
    if (playing) {
      var res = await audioPlayer.pause();
      if (res == 1) {
        setState(
          () {
            playing = false;
          },
        );
      }
    } else {
      var res = await audioPlayer.play(widget.file, isLocal: true,volume: 50);
      if (res == 1) {
        setState(
          () {
            playing = true;
          },
        );
      }
    }
  }
}
