import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_gradient/button_gradient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/field_game/field_game_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'continue_game_model.dart';
export 'continue_game_model.dart';

class ContinueGameWidget extends StatefulWidget {
  const ContinueGameWidget({Key? key}) : super(key: key);

  @override
  _ContinueGameWidgetState createState() => _ContinueGameWidgetState();
}

class _ContinueGameWidgetState extends State<ContinueGameWidget> {
  late ContinueGameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContinueGameModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<GamesRecord>>(
      future: queryGamesRecordOnce(
        parent: currentUserReference,
        queryBuilder: (gamesRecord) => gamesRecord.where(
          'isEnd',
          isEqualTo: false,
        ),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<GamesRecord> containerGamesRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final containerGamesRecord = containerGamesRecordList.isNotEmpty
            ? containerGamesRecordList.first
            : null;
        return Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).tertiary,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
          ),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/StatusBar.png',
                width: double.infinity,
                fit: BoxFit.contain,
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 45.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 48.0,
                      height: 4.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).colorIcon1,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 0.0),
                      child: Text(
                        'Продолжим игру?',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).displaySmall,
                      ),
                    ),
                    Text(
                      'Есть одна незавершенная игра',
                      textAlign: TextAlign.center,
                      style:
                          FlutterFlowTheme.of(context).headlineMedium.override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                fontSize: 14.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'CONTINUE_GAME_Container_rd1f4wbl_ON_TAP');
                          logFirebaseEvent('Button_Gradient_backend_call');

                          await containerGamesRecord!.reference
                              .update(createGamesRecordData(
                            isEnd: false,
                          ));
                          logFirebaseEvent('Button_Gradient_update_app_state');
                          FFAppState().update(() {
                            FFAppState().boardValue = valueOrDefault<int>(
                              containerGamesRecord!.moves.length > 0
                                  ? containerGamesRecord?.moves?.last?.move
                                  : 6,
                              6,
                            );
                            FFAppState().cubeValue666 = 0;
                            FFAppState().cube666 = 0;
                            FFAppState().stopCubeRotate = false;
                          });
                          logFirebaseEvent('Button_Gradient_navigate_to');
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => FieldGameWidget(
                                currentGame: containerGamesRecord,
                              ),
                            ),
                            (r) => false,
                          );
                        },
                        child: wrapWithModel(
                          model: _model.buttonGradientModel,
                          updateCallback: () => setState(() {}),
                          child: ButtonGradientWidget(
                            text: 'Продолжить',
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 29.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'CONTINUE_GAME_COMP_Text_cd4bdxj3_ON_TAP');
                          logFirebaseEvent('Text_bottom_sheet');
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Как-нибудь потом',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodyMediumFamily,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodyMediumFamily),
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
