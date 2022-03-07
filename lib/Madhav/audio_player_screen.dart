import 'dart:math' as math;

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:play_it/Madhav/audio_page.dart';

class AudioPlayerScreen extends StatefulWidget {
  // final String file;
  final SongModel file;

  const AudioPlayerScreen({Key? key, required this.file}) : super(key: key);

  @override
  State<AudioPlayerScreen> createState() => _AudioPlayerScreenState();
}

class _AudioPlayerScreenState extends State<AudioPlayerScreen>
    with SingleTickerProviderStateMixin {
  AudioPlayer audioPlayer = AudioPlayer();
  Duration duration = Duration();
  Duration position = Duration();

  bool playing = false;

  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: Duration(seconds: 10),
  );

  @override
  void initState() {
    audioPlayer.play(widget.file.data);
    playing = true;
    print('topa=${widget.file.uri}');
    _controller.repeat();
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

    audioPlayer.onPlayerCompletion.listen(
      (event) {
        setState(
          () {
            playing = false;
            _controller.reset();
          },
        );
      },
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    audioPlayer.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Stack(
            children: [
              QueryArtworkWidget(
                id: widget.file.id,
                keepOldArtwork: true,
                artworkHeight: size.height,
                artworkWidth: size.width,
                // artworkColor: Colors.black.withOpacity(0.8),
                // artworkBlendMode: BlendMode.hardLight,
                type: ArtworkType.AUDIO,
              ),
              Container(
                height: size.height,
                width: size.width,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    radius: 1,
                    tileMode: TileMode.mirror,
                    colors: [
                      // Colors.black12,
                      // Colors.black26,
                      // Colors.black38,
                      Colors.black87,
                      Colors.black87,
                      Colors.black,
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        Container(
                          height: 50,
                          width: 320,
                          child: Marquee(
                            blankSpace: 100,
                            showFadingOnlyWhenScrolling: true,
                            text: widget.file.title,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.share_outlined,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 8, right: 8, bottom: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          AnimatedBuilder(
                            animation: _controller,
                            builder: (context, child) {
                              return Transform.rotate(
                                angle: _controller.value * 2 * math.pi,
                                child: child,
                              );
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 250,
                              width: 250,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/Audio/caset.webp'),
                                ),
                              ),
                              child: QueryArtworkWidget(
                                nullArtworkWidget: Container(),
                                keepOldArtwork: true,
                                artworkRepeat: ImageRepeat.noRepeat,
                                artworkBorder: BorderRadius.circular(95),
                                id: widget.file.id,
                                type: ArtworkType.AUDIO,
                                artworkWidth: 200,
                                artworkHeight: 200,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 130,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.star_border_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              Icon(
                                Icons.playlist_add_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              Icon(
                                Icons.equalizer_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              Icon(
                                Icons.timer_outlined,
                                color: Colors.white,
                                size: 25,
                              ),
                              Icon(
                                Icons.more_vert_outlined,
                                color: Colors.white,
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
                                '${position.inMinutes.toString().padLeft(2, '0')}:${position.inSeconds.remainder(60).toString().padLeft(2, '0')}',
                                style: GoogleFonts.inter(color: Colors.white),
                              ),
                              Container(
                                child: slider(),
                                width: 240,
                              ),
                              Text(
                                '${duration.inMinutes.toString().padLeft(2, '0')}:${duration.inSeconds.remainder(60).toString().padLeft(2, '0')}',
                                style: GoogleFonts.inter(color: Colors.white),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 25,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(
                                    () {

                                    },
                                  );
                                },
                                child: Icon(
                                  Icons.skip_previous,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  getAudio();
                                },
                                child: Icon(
                                  playing == false
                                      ? Icons.play_circle_fill_outlined
                                      : Icons.pause_circle_filled_outlined,
                                  color: Colors.white,
                                  size: 60,
                                ),
                              ),
                              Icon(
                                Icons.skip_next,
                                color: Colors.white,
                                size: 40,
                              ),
                              Icon(
                                Icons.queue_music,
                                color: Colors.white,
                                size: 25,
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget slider() {
    return Slider.adaptive(
      inactiveColor: Colors.grey,
      activeColor: Colors.white,
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
            _controller.stop();
          },
        );
      }
    } else {
      var res = await audioPlayer.play(widget.file.data, isLocal: true);
      if (res == 1) {
        setState(
          () {
            playing = true;
            _controller.repeat();
          },
        );
      }
    }
  }
}
