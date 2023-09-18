import '/backend/backend.dart';
import '/components/button_gradient/button_gradient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/question_game/question_game_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'affirmations_model.dart';
export 'affirmations_model.dart';

class AffirmationsWidget extends StatefulWidget {
  const AffirmationsWidget({
    Key? key,
    required this.currentAffi,
  }) : super(key: key);

  final AffirmationsRecord? currentAffi;

  @override
  _AffirmationsWidgetState createState() => _AffirmationsWidgetState();
}

class _AffirmationsWidgetState extends State<AffirmationsWidget> {
  late AffirmationsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AffirmationsModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Affirmations'});
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
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 48.0, 0.0, 45.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'AFFIRMATIONS_Container_7a3rb5j7_ON_TAP');
                          logFirebaseEvent('Container_navigate_back');
                          Navigator.pop(context);
                        },
                        child: Container(
                          width: 35.0,
                          height: 35.0,
                          decoration: BoxDecoration(),
                          child: Icon(
                            FFIcons.kdown,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 16.0,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 35.0, 0.0),
                          child: Text(
                            'Аффирмация',
                            textAlign: TextAlign.center,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .bodyMediumFamily,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .bodyMediumFamily),
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          widget.currentAffi?.name,
                          'Название',
                        ),
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .displaySmallFamily,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .displaySmallFamily),
                                  lineHeight: 1.0,
                                ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(10.0, 26.0, 10.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        height: 250.0,
                        child: custom_widgets.CustomAudioPlayer(
                          width: double.infinity,
                          height: 250.0,
                          audioUrl:
                              functions.stringAudio(widget.currentAffi?.audio)!,
                          title: widget.currentAffi!.name,
                          imgUrl: '0',
                          skipForwardWidget: Icon(
                            FFIcons.kleft,
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
                    ),
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                      desktop: false,
                    ))
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'AFFIRMATIONS_Container_mnb2okno_ON_TAP');
                            logFirebaseEvent('Button_Gradient_navigate_to');
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuestionGameWidget(),
                              ),
                            );
                          },
                          child: wrapWithModel(
                            model: _model.buttonGradientModel,
                            updateCallback: () => setState(() {}),
                            child: ButtonGradientWidget(
                              text: 'Вписать запрос',
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
