import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'review_video_model.dart';
export 'review_video_model.dart';

class ReviewVideoWidget extends StatefulWidget {
  const ReviewVideoWidget({
    Key? key,
    required this.currentVideo,
  }) : super(key: key);

  final String? currentVideo;

  @override
  _ReviewVideoWidgetState createState() => _ReviewVideoWidgetState();
}

class _ReviewVideoWidgetState extends State<ReviewVideoWidget> {
  late ReviewVideoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReviewVideoModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Stack(
      children: [
        FlutterFlowVideoPlayer(
          path: widget.currentVideo!,
          videoType: VideoType.network,
          width: double.infinity,
          autoPlay: true,
          looping: false,
          showControls: true,
          allowFullScreen: true,
          allowPlaybackSpeedMenu: false,
          lazyLoad: false,
          pauseOnNavigate: false,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 0.0, 0.0),
          child: InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              logFirebaseEvent('REVIEW_VIDEO_Container_0t3ohwmd_ON_TAP');
              logFirebaseEvent('Container_dismiss_dialog');
              Navigator.pop(context);
            },
            child: Container(
              width: 30.0,
              height: 30.0,
              decoration: BoxDecoration(
                color: Color(0x98141414),
                borderRadius: BorderRadius.circular(6.0),
              ),
              child: Icon(
                FFIcons.kclose2,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
