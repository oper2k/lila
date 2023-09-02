// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';

import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

class CustomAudioPlayer extends StatefulWidget {
  const CustomAudioPlayer({
    Key? key,
    this.width,
    this.height,
    required this.audioUrl,
    required this.title,
    required this.imgUrl,
    this.onPlay,
    this.onPause,
    this.onSkipForward,
    this.onSkipBack,
    this.skipForwardWidget,
    this.skipBackWidget,
  }) : super(key: key);

  final String audioUrl;
  final String title;
  final String imgUrl;
  final Future<dynamic> Function()? onPlay;
  final Future<dynamic> Function()? onPause;
  final Future<dynamic> Function()? onSkipForward;
  final Future<dynamic> Function()? onSkipBack;
  final Widget? skipForwardWidget;
  final Widget? skipBackWidget;
  final double? width;
  final double? height;

  @override
  State<CustomAudioPlayer> createState() => _CustomAudioPlayerState();
}

class _CustomAudioPlayerState extends State<CustomAudioPlayer>
    with SingleTickerProviderStateMixin {
  bool _isPlaying = false;
  late AssetsAudioPlayer _mainPlayer;
  Duration _totalDuration = Duration.zero;
  String _mainUrl = '';

  void _onSeek(Duration value) {
    _mainPlayer.seek(value);
  }

  void _onPlay() async {
    await _mainPlayer.playOrPause();

    _isPlaying ? widget.onPlay?.call() : widget.onPause?.call();
  }

  void _onSkipForward() async {
    _mainPlayer.seekBy(
      const Duration(seconds: 15),
    );
    widget.onSkipForward?.call();
  }

  void _onSkipBack() async {
    _mainPlayer.seekBy(
      const Duration(seconds: -15),
    );
    widget.onSkipBack?.call();
  }

  void initMainPlayer() async {
    final audio = Audio.network(
      _mainUrl,
      metas: Metas(
        title: widget.title,
        image: MetasImage.network(widget.imgUrl),
      ), // Set your image here
    );

    await _mainPlayer.open(
      notificationSettings: NotificationSettings(
        customNextAction: (player) => _onSkipForward(),
        customPrevAction: (player) => _onSkipBack(),
      ),
      showNotification: true,
      audio,
      autoStart: false,
    );
    _totalDuration =
        _mainPlayer.current.valueOrNull?.audio.duration ?? Duration.zero;
  }

  @override
  void initState() {
    _mainPlayer = AssetsAudioPlayer();
    _mainUrl = widget.audioUrl;
    initMainPlayer();

    super.initState();
  }

  @override
  void dispose() {
    _mainPlayer.dispose();
    super.dispose();
  }

  @override
  void didUpdateWidget(CustomAudioPlayer oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  _onSpeedChanged(int index) {
    if (index == 0) {
      _mainPlayer.setPlaySpeed(1);
    } else {
      _mainPlayer.setPlaySpeed(1.5);
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          StreamBuilder<RealtimePlayingInfos>(
            stream: _mainPlayer.realtimePlayingInfos,
            builder: (context, snapshot) {
              final duration = snapshot.data?.currentPosition ?? Duration.zero;
              final total = _totalDuration;
              return Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                width: size.width,
                child: ProgressBar(
                  progress: duration,
                  total: total,
                  timeLabelLocation: TimeLabelLocation.below,
                  onSeek: _onSeek,
                  timeLabelPadding: 10,
                  progressBarColor: Colors.white,
                  thumbColor: Colors.white,
                  baseBarColor: const Color(0xFF9197AE),
                  timeLabelTextStyle: const TextStyle(color: Color(0xFFFFFFFF)),
                ),
              );
            },
          ),
          const SizedBox(height: 74),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Material(
                borderRadius: BorderRadius.circular(100),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: _onSkipBack,
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: widget.skipBackWidget ??
                        const Icon(
                          Icons.skip_previous_sharp,
                          size: 46,
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
              const SizedBox(width: 36),
              InkWell(
                borderRadius: BorderRadius.circular(100),
                onTap: () => _onPlay(),
                child: Container(
                  width: 64,
                  height: 64,
                  decoration: BoxDecoration(
                    color: const Color(0xFF7D6CEE),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: StreamBuilder<bool>(
                    stream: _mainPlayer.isPlaying,
                    builder: (context, snapshot) {
                      final isPlaying =
                          snapshot.hasData ? snapshot.data! : false;
                      _isPlaying = isPlaying;

                      return Icon(
                        isPlaying
                            ? Icons.pause_rounded
                            : Icons.play_arrow_rounded,
                        size: 50,
                        color: Colors.white,
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(width: 36),
              Material(
                borderRadius: BorderRadius.circular(100),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(100),
                  onTap: _onSkipForward,
                  child: SizedBox(
                    height: 60,
                    width: 60,
                    child: widget.skipBackWidget ??
                        const Icon(
                          Icons.skip_next_sharp,
                          size: 46,
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
