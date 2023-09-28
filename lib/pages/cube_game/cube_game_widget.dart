import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/field_game/field_game_widget.dart';
import '/pages/question_game/question_game_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'cube_game_model.dart';
export 'cube_game_model.dart';

class CubeGameWidget extends StatefulWidget {
  const CubeGameWidget({
    Key? key,
    this.currentRequest,
  }) : super(key: key);

  final String? currentRequest;

  @override
  _CubeGameWidgetState createState() => _CubeGameWidgetState();
}

class _CubeGameWidgetState extends State<CubeGameWidget>
    with TickerProviderStateMixin {
  late CubeGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = {
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 40.ms,
          duration: 0.ms,
          begin: 0.05,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        RotateEffect(
          curve: Curves.easeOut,
          delay: 200.ms,
          duration: 2500.ms,
          begin: 0.0,
          end: 5.0,
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 2500.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 200.ms,
          duration: 2500.ms,
          begin: Offset(0.8, 0.8),
          end: Offset(1.0, 1.0),
        ),
      ],
    ),
    'textOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 950.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 110.ms,
          duration: 800.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 950.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'textOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 110.ms,
          duration: 950.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'buttonExpOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 110.ms,
          duration: 800.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CubeGameModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Cube_Game'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('CUBE_GAME_PAGE_Cube_Game_ON_INIT_STATE');
      logFirebaseEvent('Cube_Game_wait__delay');
      await Future.delayed(const Duration(milliseconds: 2000));
      logFirebaseEvent('Cube_Game_update_app_state');
      FFAppState().update(() {
        FFAppState().cubeValue = random_data.randomInteger(1, 6);
      });
    });
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            automaticallyImplyLeading: false,
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              background: Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: Image.asset(
                  'assets/images/StatusBar.png',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 40.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/images/cube_stars.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ).animateOnPageLoad(
                      animationsMap['imageOnPageLoadAnimation1']!),
                  Container(
                    height: 82.0,
                    child: Stack(
                      children: [
                        if (FFAppState().cubeValue == 6)
                          Image.asset(
                            'assets/images/Cube_6.png',
                            width: 82.0,
                            fit: BoxFit.contain,
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation2']!),
                        if (FFAppState().cubeValue == 5)
                          Image.asset(
                            'assets/images/Cube_5.png',
                            width: 82.0,
                            fit: BoxFit.contain,
                          ),
                        if (FFAppState().cubeValue == 4)
                          Image.asset(
                            'assets/images/Cube_4.png',
                            width: 82.0,
                            fit: BoxFit.contain,
                          ),
                        if (FFAppState().cubeValue == 3)
                          Image.asset(
                            'assets/images/Cube_3.png',
                            width: 82.0,
                            fit: BoxFit.contain,
                          ),
                        if (FFAppState().cubeValue == 2)
                          Image.asset(
                            'assets/images/Cube_2.png',
                            width: 82.0,
                            fit: BoxFit.contain,
                          ),
                        if (FFAppState().cubeValue == 1)
                          Image.asset(
                            'assets/images/Cube_1.png',
                            width: 82.0,
                            fit: BoxFit.contain,
                          ),
                        if (FFAppState().cubeValue == 7)
                          Image.asset(
                            'assets/images/Cube_0.png',
                            width: 82.0,
                            fit: BoxFit.contain,
                          ).animateOnPageLoad(
                              animationsMap['imageOnPageLoadAnimation3']!),
                      ],
                    ),
                  ),
                  if (FFAppState().cubeValue <= 5)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        valueOrDefault<String>(
                          FFAppState().cubeValue <= 5
                              ? functions.returnRandomStringFromListString(
                                  FFAppState().randomPraseForStartGame.toList())
                              : 'Не вышло!',
                          'Добро пожаловать!',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).displaySmall,
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation1']!),
                    ),
                  if (FFAppState().cubeValue == 6)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        '6 означает бросить кубик еще раз',
                        textAlign: TextAlign.center,
                        style:
                            FlutterFlowTheme.of(context).displaySmall.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .displaySmallFamily,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .displaySmallFamily),
                                  lineHeight: 1.4,
                                ),
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation2']!),
                    ),
                  if (FFAppState().cubeValue <= 5)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Переформулируй свой запрос',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).headlineMedium,
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation3']!),
                    ),
                  if (FFAppState().cubeValue == 6)
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                      child: Text(
                        'Поздравляем, Лила впустила тебя в игру!',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).headlineMedium,
                      ).animateOnPageLoad(
                          animationsMap['textOnPageLoadAnimation4']!),
                    ),
                  if (FFAppState().cubeValue == 6)
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 1.00),
                        child: FutureBuilder<List<GameFieldRecord>>(
                          future: queryGameFieldRecordOnce(
                            queryBuilder: (gameFieldRecord) =>
                                gameFieldRecord.where(
                              'number',
                              isEqualTo: 68,
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
                            List<GameFieldRecord> buttonExpGameFieldRecordList =
                                snapshot.data!;
                            // Return an empty Container when the item does not exist.
                            if (snapshot.data!.isEmpty) {
                              return Container();
                            }
                            final buttonExpGameFieldRecord =
                                buttonExpGameFieldRecordList.isNotEmpty
                                    ? buttonExpGameFieldRecordList.first
                                    : null;
                            return InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                logFirebaseEvent(
                                    'CUBE_GAME_PAGE_Container_gmssbgju_ON_TAP');
                                var _shouldSetState = false;
                                if (FFAppState().Free3Moves <= 0) {
                                  if (!valueOrDefault<bool>(
                                      currentUserDocument?.buyGame, false)) {
                                    logFirebaseEvent('Button_Exp_revenue_cat');
                                    final isEntitled = await revenue_cat
                                            .isEntitled('issubscribe') ??
                                        false;
                                    if (!isEntitled) {
                                      await revenue_cat.loadOfferings();
                                    }

                                    if (!isEntitled) {
                                      logFirebaseEvent(
                                          'Button_Exp_backend_call');
                                      _model.getSubscribeCloudGame =
                                          await CloudpaymentsGroup
                                              .getSubscriptionCall
                                              .call(
                                        id: valueOrDefault(
                                            currentUserDocument?.modelId, ''),
                                      );
                                      _shouldSetState = true;
                                      if (CloudpaymentsGroup.getSubscriptionCall
                                              .modelStatus(
                                                (_model.getSubscribeCloudGame
                                                        ?.jsonBody ??
                                                    ''),
                                              )
                                              .toString() !=
                                          'Active') {
                                        logFirebaseEvent(
                                            'Button_Exp_navigate_to');
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => SubPayWidget(
                                              showThreeMove: true,
                                            ),
                                          ),
                                        );
                                        if (_shouldSetState) setState(() {});
                                        return;
                                      }
                                    }
                                  }
                                }
                                logFirebaseEvent('Button_Exp_update_app_state');
                                FFAppState().update(() {
                                  FFAppState().cubeValue = 6;
                                  FFAppState().boardValue = 68;
                                  FFAppState().endGame68 = 0;
                                  FFAppState().stopCubeRotate = true;
                                  FFAppState().cube666 = 0;
                                  FFAppState().cubeValue666 = 0;
                                  FFAppState().oneGame = true;
                                  FFAppState().endGame = false;
                                  FFAppState().visibilityCard = 1;
                                });
                                logFirebaseEvent('Button_Exp_backend_call');

                                var gamesRecordReference =
                                    GamesRecord.createDoc(
                                        currentUserReference!);
                                await gamesRecordReference
                                    .set(createGamesRecordData(
                                  date: getCurrentTimestamp,
                                  isEnd: false,
                                  request: widget.currentRequest,
                                  isDelete: false,
                                ));
                                _model.newGame =
                                    GamesRecord.getDocumentFromData(
                                        createGamesRecordData(
                                          date: getCurrentTimestamp,
                                          isEnd: false,
                                          request: widget.currentRequest,
                                          isDelete: false,
                                        ),
                                        gamesRecordReference);
                                _shouldSetState = true;
                                logFirebaseEvent('Button_Exp_navigate_to');
                                Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => FieldGameWidget(
                                      currentGameField:
                                          buttonExpGameFieldRecord,
                                      currentGame: _model.newGame,
                                    ),
                                  ),
                                  (r) => false,
                                );
                                if (_shouldSetState) setState(() {});
                              },
                              child: wrapWithModel(
                                model: _model.buttonExpModel1,
                                updateCallback: () => setState(() {}),
                                child: ButtonExpWidget(
                                  text: 'Бросить кубик',
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  if (FFAppState().cubeValue <= 5)
                    Expanded(
                      child: Align(
                        alignment: AlignmentDirectional(0.00, 1.00),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'CUBE_GAME_PAGE_Container_3pk36ovc_ON_TAP');
                            logFirebaseEvent('Button_Exp_update_app_state');
                            FFAppState().update(() {
                              FFAppState().cubeValue = 0;
                            });
                            logFirebaseEvent('Button_Exp_navigate_to');
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => QuestionGameWidget(),
                              ),
                            );
                          },
                          child: wrapWithModel(
                            model: _model.buttonExpModel2,
                            updateCallback: () => setState(() {}),
                            child: ButtonExpWidget(
                              text: 'Назад к запросу',
                            ),
                          ),
                        ).animateOnPageLoad(
                            animationsMap['buttonExpOnPageLoadAnimation']!),
                      ),
                    ),
                ],
              ),
            ),
            if (FFAppState().cubeValue == 6)
              Lottie.asset(
                'assets/lottie_animations/95327-usa-confetti.json',
                width: MediaQuery.sizeOf(context).width * 1.0,
                height: 280.0,
                fit: BoxFit.cover,
                animate: true,
              ),
          ],
        ),
      ),
    );
  }
}
