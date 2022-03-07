import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';

class AudioPlayerScreen extends StatefulWidget {
  // final String file;
  final SongModel file;

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
    audioPlayer.play(widget.file.data);
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
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        // Text(
        //   '${widget.file.title}\n${widget.file.artist.toString()}',
        //   maxLines: 5,
        //   style: TextStyle(color: Colors.black),
        // ),
        body: Column(
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(Icons.arrow_back,color: Colors.black,),
                Container(
                  width: 230,
                  child: Wrap(
                    children: [Text(
                      '${widget.file.title}\n${widget.file.artist..toString()}',
                      maxLines: 5,
                      style: TextStyle(color: Colors.black),
                    ),]
                  ),
                ),
                Icon(Icons.share_outlined,color: Colors.black,),
              ],
            ),
              height: size.height * 0.14,
              color: Colors.white,
            ),
            Container(
              height: size.height * 0.80,
              padding: EdgeInsets.only(left: 8, right: 8, bottom: 30),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  QueryArtworkWidget(
                      id: widget.file.id,
                      type: ArtworkType.AUDIO,
                      artworkWidth: 200,
                      artworkHeight: 200),
                  SizedBox(
                    height: 130,
                  ),
                  // Image(image: AssetImage('assets/Icons/ic_launcher.png')),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.star_border_outlined,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Icon(
                        Icons.playlist_add_outlined,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Icon(
                        Icons.equalizer_outlined,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Icon(
                        Icons.timer_outlined,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Icon(
                        Icons.more_vert_outlined,
                        color: Colors.blue,
                        size: 25,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                          '${position.inMinutes}:${position.inSeconds.remainder(60)}'),
                      Container(
                        child: slider(),
                        width: 240,
                      ),
                      Text(
                          '${duration.inMinutes}:${duration.inSeconds.remainder(60)}'),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.favorite,
                        color: Colors.blue,
                        size: 25,
                      ),
                      Icon(
                        Icons.skip_previous,
                        color: Colors.blue,
                        size: 40,
                      ),
                      InkWell(
                        onTap: () {
                          getAudio();
                        },
                        child: Icon(
                          playing == false
                              ? Icons.play_circle_fill_outlined
                              : Icons.pause_circle_filled_outlined,
                          color: Colors.blue,
                          size: 60,
                        ),
                      ),
                      Icon(
                        Icons.skip_next,
                        color: Colors.blue,
                        size: 40,
                      ),
                      Icon(
                        Icons.queue_music,
                        color: Colors.blue,
                        size: 25,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
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
      var res =
          await audioPlayer.play(widget.file.data, isLocal: true, volume: 50);
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
