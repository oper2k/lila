import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'player_model.dart';
export 'player_model.dart';

class PlayerWidget extends StatefulWidget {
  const PlayerWidget({Key? key}) : super(key: key);

  @override
  _PlayerWidgetState createState() => _PlayerWidgetState();
}

class _PlayerWidgetState extends State<PlayerWidget> {
  late PlayerModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PlayerModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Player'});
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                'assets/images/fon_player.jpg',
              ).image,
            ),
          ),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(24.0, 48.0, 24.0, 110.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(5.0, 5.0, 5.0, 5.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'PLAYER_PAGE_Container_ox1j4ovt_ON_TAP');
                          logFirebaseEvent('Container_navigate_back');
                          Navigator.pop(context);
                        },
                        child: Container(
                          decoration: BoxDecoration(),
                          child: Icon(
                            FFIcons.kdown,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'Медитации',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: double.infinity,
                  child: Stack(
                    alignment: AlignmentDirectional(0.0, 0.51),
                    children: [
                      if (responsiveVisibility(
                        context: context,
                        phone: false,
                        tablet: false,
                        tabletLandscape: false,
                        desktop: false,
                      ))
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 45.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            height: 335.0,
                            child: custom_widgets.AudioPlayerNew(
                              width: double.infinity,
                              height: 335.0,
                              musicName: FFAppState().meditationName,
                              description: FFAppState().meditationDescription,
                              url: FFAppState().meditationSound,
                            ),
                          ),
                        ),
                      Container(
                        width: double.infinity,
                        height: 335.0,
                        child: custom_widgets.CustomAudioPlayer(
                          width: double.infinity,
                          height: 335.0,
                          audioUrl: FFAppState().meditationSound,
                          title: FFAppState().meditationName,
                          imgUrl: '0',
                          skipForwardWidget: Icon(
                            FFIcons.kright,
                            size: 0.0,
                          ),
                          skipBackWidget: Icon(
                            FFIcons.kleft,
                            size: 0.0,
                          ),
                          onPlay: () async {},
                          onPause: () async {},
                          onSkipForward: () async {},
                          onSkipBack: () async {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
