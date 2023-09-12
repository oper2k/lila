// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_fonts/google_fonts.dart';
import '../../flutter_flow/flutter_flow_icon_button.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerNew extends StatefulWidget {
  final double width;
  final double height;
  final String musicName;
  final String description;
  final String url;
  const AudioPlayerNew({
    Key? key,
    required this.width,
    required this.height,
    required this.musicName,
    required this.description,
    required this.url,
  }) : super(key: key);

  @override
  State<AudioPlayerNew> createState() => _AudioPlayerNewState();
}

class _AudioPlayerNewState extends State<AudioPlayerNew> {
  late AudioPlayer audioPlayer;
  Duration _duration = const Duration();
  Duration _position = const Duration();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioPlayer = AudioPlayer();
    final contexts = AudioContext(
      iOS: AudioContextIOS(
        category: AVAudioSessionCategory.ambient,
        options: [
          AVAudioSessionOptions.defaultToSpeaker,
          AVAudioSessionOptions.mixWithOthers,
        ],
      ),
    );
    AudioPlayer.global.setGlobalAudioContext(contexts);
    audioPlayer.onDurationChanged.listen((duration) {
      setState(() {
        _duration = duration;
      });
    });
    audioPlayer.onPlayerStateChanged.listen(
      (event) async {},
    );

    audioPlayer.onPositionChanged.listen((position) {
      setState(() {
        _position = position;
      });
    });
    // audioPlayer..listen((event) {
    //   setState(() {
    //     _position = const Duration(seconds: 0);
    //     isPlaying = false;
    //   });
    // });
    audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        _position = const Duration(seconds: 0);
        isPlaying = false;
      });
    });
    // audioPlayer.setSourceUrl(widget.url);
  }

  @override
  void dispose() {
    super.dispose();
    audioPlayer.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var posSec = _position.toString().split(".")[0].toString().split(':');
    var durSec = _duration.toString().split(".")[0].toString().split(':');
    return Container(
      color: Color.fromARGB(0, 244, 67, 54),
      width: widget.width,
      height: widget.height,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              widget.musicName,
              style: FlutterFlowTheme.of(context).title1,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 30, top: 0, left: 10, right: 20),
            child: Text(
              widget.description,
              style: FlutterFlowTheme.of(context).bodyText2.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyText2Family,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyText2Family),
                    lineHeight: 1.4,
                  ),
            ),
          ),
          SliderTheme(
            data: SliderThemeData(
              overlayShape: SliderComponentShape.noOverlay,
              thumbColor: Colors.white,
              activeTrackColor: FlutterFlowTheme.of(context).colorButton,
            ),
            child: Slider(
              inactiveColor: const Color(0x4CFFFFFF),
              min: 0.0,
              max: _duration.inSeconds.toDouble(),
              value: _position.inSeconds.toDouble(),
              onChanged: (value) {
                setState(() {
                  audioPlayer.seek(Duration(seconds: value.toInt()));
                });
              },
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(10, 8, 10, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  posSec[1] + ':' + posSec[2],
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText2Family,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText2Family),
                      ),
                ),
                Text(
                  durSec[1] + ':' + durSec[2],
                  style: FlutterFlowTheme.of(context).bodyText2.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText2Family,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText2Family),
                      ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 55, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 50, 0),
                  child: FlutterFlowIconButton(
                    borderColor: Colors.transparent,
                    borderRadius: 60,
                    borderWidth: 1,
                    buttonSize: 64,
                    fillColor: FlutterFlowTheme.of(context).colorButton,
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 42,
                    ),
                    onPressed: () async {
                      try {
                        if (isPlaying) {
                          audioPlayer.pause().then(
                                (_) => setState(() {
                                  isPlaying = !isPlaying;
                                }),
                              );
                        } else {
                          audioPlayer
                              .play(UrlSource(widget.url))
                              .then((_) => setState(() {
                                    isPlaying = !isPlaying;
                                  }));
                        }
                      } catch (e) {
                        setState(() {
                          _position = const Duration(seconds: 0);
                          isPlaying = false;
                          return;
                        });
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
