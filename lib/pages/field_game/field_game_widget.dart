import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/components/cube_6/cube6_widget.dart';
import '/components/game666/game666_widget.dart';
import '/components/game_end_move/game_end_move_widget.dart';
import '/components/game_one_move/game_one_move_widget.dart';
import '/components/menu_game/menu_game_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/end_game_dage/end_game_dage_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'field_game_model.dart';
export 'field_game_model.dart';

class FieldGameWidget extends StatefulWidget {
  const FieldGameWidget({
    Key? key,
    this.currentGameField,
    this.currentGame,
  }) : super(key: key);

  final GameFieldRecord? currentGameField;
  final GamesRecord? currentGame;

  @override
  _FieldGameWidgetState createState() => _FieldGameWidgetState();
}

class _FieldGameWidgetState extends State<FieldGameWidget>
    with TickerProviderStateMixin {
  late FieldGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasImageTriggered1 = false;
  final animationsMap = {
    'textOnPageLoadAnimation1': AnimationInfo(
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
    'textOnPageLoadAnimation2': AnimationInfo(
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
    'stackOnPageLoadAnimation': AnimationInfo(
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
    'imageOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
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
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation8': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation9': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation10': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation11': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation12': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation13': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation14': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation15': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation16': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation17': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation18': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation19': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation20': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1000.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'gridViewOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        SaturateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'imageOnActionTriggerAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: false,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 3000.ms,
          begin: 0.1,
          end: 2.0,
        ),
      ],
    ),
    'imageOnPageLoadAnimation21': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      applyInitialState: true,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 2000.ms,
          begin: 0.1,
          end: 2.0,
        ),
      ],
    ),
    'columnOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 750.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -10.0),
        ),
      ],
    ),
    'stackOnActionTriggerAnimation': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        RotateEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1400.ms,
          begin: 0.0,
          end: 5.0,
        ),
      ],
    ),
    'imageOnActionTriggerAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 740.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -7.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 740.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -7.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 740.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -7.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 740.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -7.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation6': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 740.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -7.0),
        ),
      ],
    ),
    'imageOnActionTriggerAnimation7': AnimationInfo(
      trigger: AnimationTrigger.onActionTrigger,
      applyInitialState: true,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 740.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(0.0, -7.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeIn,
          delay: 90.ms,
          duration: 1150.ms,
          begin: 0.0,
          end: 1.0,
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 90.ms,
          duration: 1230.ms,
          begin: Offset(0.1, 0.1),
          end: Offset(1.1, 1.1),
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 920.ms,
          duration: 1230.ms,
          begin: Offset(1.1, 1.1),
          end: Offset(0.9, 0.9),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1550.ms,
          begin: Offset(0.6, 0.6),
          end: Offset(1.0, 1.0),
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1550.ms,
          begin: Offset(0.0, 130.0),
          end: Offset(0.0, 0.0),
        ),
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 1550.ms,
          begin: 0.7,
          end: 1.0,
        ),
      ],
    ),
    'buttonExpOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 270.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
    'iconButtonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1450.ms,
          duration: 1150.ms,
          begin: 0.0,
          end: 1.0,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FieldGameModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Field_Game'});
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('FIELD_GAME_PAGE_Field_Game_ON_INIT_STATE');
      if ((FFAppState().boardValue == 10) ||
          (FFAppState().boardValue == 12) ||
          (FFAppState().boardValue == 16) ||
          (FFAppState().boardValue == 17) ||
          (FFAppState().boardValue == 20) ||
          (FFAppState().boardValue == 22) ||
          (FFAppState().boardValue == 24) ||
          (FFAppState().boardValue == 27) ||
          (FFAppState().boardValue == 28) ||
          (FFAppState().boardValue == 29) ||
          (FFAppState().boardValue == 37) ||
          (FFAppState().boardValue == 45) ||
          (FFAppState().boardValue == 46) ||
          (FFAppState().boardValue == 52) ||
          (FFAppState().boardValue == 54) ||
          (FFAppState().boardValue == 55) ||
          (FFAppState().boardValue == 61) ||
          (FFAppState().boardValue == 63) ||
          (FFAppState().boardValue == 72) ||
          (FFAppState().boardValue == 44)) {
        logFirebaseEvent('Field_Game_wait__delay');
        await Future.delayed(const Duration(milliseconds: 300));
        logFirebaseEvent('Field_Game_update_app_state');
        setState(() {
          FFAppState().visibilityCard = 2;
        });
        return;
      }
      if (FFAppState().boardValue == 68) {
        logFirebaseEvent('Field_Game_update_app_state');
        setState(() {
          FFAppState().boardValue = 68;
        });
        logFirebaseEvent('Field_Game_wait__delay');
        await Future.delayed(const Duration(milliseconds: 4000));
        logFirebaseEvent('Field_Game_update_app_state');
        setState(() {
          FFAppState().boardValue = 6;
          FFAppState().endGame68 = 0;
        });
      }
      logFirebaseEvent('Field_Game_widget_animation');
      if (animationsMap['columnOnActionTriggerAnimation'] != null) {
        animationsMap['columnOnActionTriggerAnimation']!.controller.reset();
      }
      logFirebaseEvent('Field_Game_update_app_state');
      setState(() {
        FFAppState().visibilityCard = 1;
      });
      logFirebaseEvent('Field_Game_wait__delay');
      await Future.delayed(const Duration(milliseconds: 3000));
      logFirebaseEvent('Field_Game_update_app_state');
      setState(() {
        FFAppState().stopCubeRotate = false;
      });
    });

    _model.inputInsiteGameController ??= TextEditingController();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return FutureBuilder<List<GameFieldRecord>>(
      future: queryGameFieldRecordOnce(
        queryBuilder: (gameFieldRecord) =>
            gameFieldRecord.where('number', isEqualTo: FFAppState().boardValue),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<GameFieldRecord> fieldGameGameFieldRecordList = snapshot.data!;
        final fieldGameGameFieldRecord = fieldGameGameFieldRecordList.isNotEmpty
            ? fieldGameGameFieldRecordList.first
            : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            body: AnimatedContainer(
              duration: Duration(milliseconds: 1600),
              curve: Curves.easeIn,
              width: double.infinity,
              decoration: BoxDecoration(
                color: FFAppState().visibilityCard > 2
                    ? Color(0xFFAE74F8)
                    : FlutterFlowTheme.of(context).secondary,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 45.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.contain,
                          image: Image.asset(
                            'assets/images/StatusBar.png',
                          ).image,
                        ),
                      ),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 45.0, 0.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            logFirebaseEvent(
                                'FIELD_GAME_PAGE_Row_m84tbcws_ON_TAP');
                            logFirebaseEvent('Row_bottom_sheet');
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              barrierColor: Color(0x00000000),
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () => FocusScope.of(context)
                                      .requestFocus(_model.unfocusNode),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MenuGameWidget(
                                      currentGame: widget.currentGame,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              if (responsiveVisibility(
                                context: context,
                                phone: false,
                                tablet: false,
                                tabletLandscape: false,
                                desktop: false,
                              ))
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Text(
                                        FFAppState().cubeValue666.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Text(
                                        FFAppState().cube666.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    if (responsiveVisibility(
                                      context: context,
                                      tabletLandscape: false,
                                      desktop: false,
                                    ))
                                      Text(
                                        FFAppState().boardValue.toString(),
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium,
                                      ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 64.0, 0.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          logFirebaseEvent(
                                              'FIELD_GAME_Container_etmzfhq3_ON_TAP');
                                          if (_model.game666) {
                                            logFirebaseEvent(
                                                'Container_update_widget_state');
                                            setState(() {
                                              _model.game666 = false;
                                            });
                                          } else {
                                            logFirebaseEvent(
                                                'Container_update_widget_state');
                                            setState(() {
                                              _model.game666 = true;
                                            });
                                          }
                                        },
                                        child: Container(
                                          width: 50.0,
                                          height: 19.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              Text(
                                'Меню',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 28.0, 0.0),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'FIELD_GAME_PAGE_Icon_psz3c16f_ON_TAP');
                                    logFirebaseEvent('Icon_bottom_sheet');
                                    await showModalBottomSheet(
                                      isScrollControlled: true,
                                      backgroundColor: Colors.transparent,
                                      barrierColor: Color(0x00000000),
                                      context: context,
                                      builder: (context) {
                                        return GestureDetector(
                                          onTap: () => FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode),
                                          child: Padding(
                                            padding: MediaQuery.viewInsetsOf(
                                                context),
                                            child: MenuGameWidget(
                                              currentGame: widget.currentGame,
                                            ),
                                          ),
                                        );
                                      },
                                    ).then((value) => safeSetState(() {}));
                                  },
                                  child: Icon(
                                    FFIcons.kburger,
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 1.0),
                          children: [
                            if (FFAppState().visibilityCard == 1)
                              Align(
                                alignment: AlignmentDirectional(0.00, -1.00),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 13.0, 0.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          if (!FFAppState().requestVisibility)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'FIELD_GAME_PAGE_Text_3ns3tm2v_ON_TAP');
                                                  if (functions
                                                      .subLength50('50')) {
                                                    logFirebaseEvent(
                                                        'Text_update_app_state');
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .requestVisibility =
                                                          true;
                                                    });
                                                    return;
                                                  } else {
                                                    return;
                                                  }
                                                },
                                                child: Text(
                                                  widget.currentGame!.request,
                                                  textAlign: TextAlign.center,
                                                  maxLines: 2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        fontSize: 20.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation1']!),
                                            ),
                                          if (FFAppState().requestVisibility)
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      24.0, 0.0, 24.0, 0.0),
                                              child: InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  logFirebaseEvent(
                                                      'FIELD_GAME_PAGE_Text_pxu91jej_ON_TAP');
                                                  logFirebaseEvent(
                                                      'Text_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                            .requestVisibility =
                                                        false;
                                                  });
                                                },
                                                child: Text(
                                                  widget.currentGame!.request,
                                                  textAlign: TextAlign.center,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .displaySmall
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmallFamily,
                                                        fontSize: 20.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .displaySmallFamily),
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ).animateOnPageLoad(animationsMap[
                                                  'textOnPageLoadAnimation2']!),
                                            ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Container(
                                          width: double.infinity,
                                          child: Stack(
                                            children: [
                                              Image.asset(
                                                'assets/images/bg_game_new2.png',
                                                width: double.infinity,
                                                fit: BoxFit.contain,
                                              ),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '10')
                                                Image.asset(
                                                  'assets/images/arrow_10_23.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation1']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '17')
                                                Image.asset(
                                                  'assets/images/arrow_17_69.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation2']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '20')
                                                Image.asset(
                                                  'assets/images/arrow_20_32.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation3']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '22')
                                                Image.asset(
                                                  'assets/images/arrow_22_60.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation4']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '27')
                                                Image.asset(
                                                  'assets/images/arrow_27_41.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation5']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '28')
                                                Image.asset(
                                                  'assets/images/arrow_28_50.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation6']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '37')
                                                Image.asset(
                                                  'assets/images/arrow_37_66.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation7']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '45')
                                                Image.asset(
                                                  'assets/images/arrow_45_67.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation8']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '46')
                                                Image.asset(
                                                  'assets/images/arrow_46_62.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation9']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '54')
                                                Image.asset(
                                                  'assets/images/arrow_54_68.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation10']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '12')
                                                Image.asset(
                                                  'assets/images/snake_12_8.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation11']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '24')
                                                Image.asset(
                                                  'assets/images/snake_24_7.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation12']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '29')
                                                Image.asset(
                                                  'assets/images/snake_29_6.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation13']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '44')
                                                Image.asset(
                                                  'assets/images/snake_44_9.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation14']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '52')
                                                Image.asset(
                                                  'assets/images/snake_52_35.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation15']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '72')
                                                Image.asset(
                                                  'assets/images/snake_52_51.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation16']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '55')
                                                Image.asset(
                                                  'assets/images/snake_55_3.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation17']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '61')
                                                Image.asset(
                                                  'assets/images/shake_61_13_new.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation18']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '63')
                                                Image.asset(
                                                  'assets/images/shake_63_2_new1.png',
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation19']!),
                                              if (FFAppState()
                                                      .boardValue
                                                      .toString() ==
                                                  '16')
                                                Image.asset(
                                                  'assets/images/snake_4_16.png',
                                                  width: double.infinity,
                                                  fit: BoxFit.cover,
                                                ).animateOnPageLoad(animationsMap[
                                                    'imageOnPageLoadAnimation20']!),
                                              FutureBuilder<
                                                  List<GameFieldRecord>>(
                                                future:
                                                    queryGameFieldRecordOnce(
                                                  queryBuilder:
                                                      (gameFieldRecord) =>
                                                          gameFieldRecord.orderBy(
                                                              'reverse_order',
                                                              descending: true),
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50.0,
                                                        height: 50.0,
                                                        child:
                                                            CircularProgressIndicator(
                                                          valueColor:
                                                              AlwaysStoppedAnimation<
                                                                  Color>(
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                          ),
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<GameFieldRecord>
                                                      gridViewGameFieldRecordList =
                                                      snapshot.data!;
                                                  return GridView.builder(
                                                    padding: EdgeInsets.zero,
                                                    gridDelegate:
                                                        SliverGridDelegateWithFixedCrossAxisCount(
                                                      crossAxisCount: 9,
                                                      crossAxisSpacing: 0.0,
                                                      mainAxisSpacing: 0.0,
                                                      childAspectRatio: 0.84,
                                                    ),
                                                    primary: false,
                                                    shrinkWrap: true,
                                                    scrollDirection:
                                                        Axis.vertical,
                                                    itemCount:
                                                        gridViewGameFieldRecordList
                                                            .length,
                                                    itemBuilder: (context,
                                                        gridViewIndex) {
                                                      final gridViewGameFieldRecord =
                                                          gridViewGameFieldRecordList[
                                                              gridViewIndex];
                                                      return Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          color: Colors
                                                              .transparent,
                                                          border: Border.all(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .border,
                                                            width: 0.5,
                                                          ),
                                                        ),
                                                        child: Stack(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0.0, 0.0),
                                                          children: [
                                                            if (gridViewGameFieldRecord
                                                                    .number ==
                                                                FFAppState()
                                                                    .boardValue)
                                                              Image.asset(
                                                                'assets/images/stars.png',
                                                                width: double
                                                                    .infinity,
                                                                height: double
                                                                    .infinity,
                                                                fit: BoxFit
                                                                    .contain,
                                                              )
                                                                  .animateOnPageLoad(
                                                                      animationsMap[
                                                                          'imageOnPageLoadAnimation21']!)
                                                                  .animateOnActionTrigger(
                                                                      animationsMap[
                                                                          'imageOnActionTriggerAnimation1']!,
                                                                      hasBeenTriggered:
                                                                          hasImageTriggered1),
                                                            if (gridViewGameFieldRecord
                                                                    .number !=
                                                                gridViewGameFieldRecord
                                                                    .removeNumberField)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.00,
                                                                        0.00),
                                                                child: Text(
                                                                  gridViewGameFieldRecord
                                                                      .number
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                        fontSize:
                                                                            13.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                            if (FFAppState()
                                                                    .boardValue ==
                                                                gridViewGameFieldRecord
                                                                    .number)
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        0.00,
                                                                        0.00),
                                                                child: Text(
                                                                  gridViewGameFieldRecord
                                                                      .number
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            FlutterFlowTheme.of(context).headlineMediumFamily,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .primaryText,
                                                                        fontSize:
                                                                            14.0,
                                                                        fontWeight:
                                                                            FontWeight.w800,
                                                                        useGoogleFonts:
                                                                            GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).headlineMediumFamily),
                                                                      ),
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      );
                                                    },
                                                  ).animateOnPageLoad(animationsMap[
                                                      'gridViewOnPageLoadAnimation']!);
                                                },
                                              ),
                                            ],
                                          ),
                                        ).animateOnPageLoad(animationsMap[
                                            'stackOnPageLoadAnimation']!),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 28.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'FIELD_GAME_PAGE_Stack_mwqnz5bw_ON_TAP');
                                                var _shouldSetState = false;
                                                if (FFAppState()
                                                    .stopCubeRotate) {
                                                  if (_shouldSetState)
                                                    setState(() {});
                                                  return;
                                                }
                                                // не даём нажать на кубик, пока ход не закончился
                                                logFirebaseEvent(
                                                    'Stack_update_app_state');
                                                FFAppState().update(() {
                                                  FFAppState().stopCubeRotate =
                                                      true;
                                                });
                                                if (FFAppState().Free3Moves <=
                                                    0) {
                                                  logFirebaseEvent(
                                                      'Stack_backend_call');

                                                  await currentUserReference!
                                                      .update(
                                                          createUsersRecordData(
                                                    endFreeGame: true,
                                                  ));
                                                  if (!valueOrDefault<bool>(
                                                      currentUserDocument
                                                          ?.buyGame,
                                                      false)) {
                                                    logFirebaseEvent(
                                                        'Stack_revenue_cat');
                                                    final isEntitled =
                                                        await revenue_cat
                                                            .isEntitled(
                                                                'issubscribe');
                                                    if (isEntitled == null) {
                                                      return;
                                                    } else if (!isEntitled) {
                                                      await revenue_cat
                                                          .loadOfferings();
                                                    }

                                                    if (!isEntitled) {
                                                      logFirebaseEvent(
                                                          'Stack_backend_call');
                                                      _model.getSubscribeCloudGame =
                                                          await CloudpaymentsGroup
                                                              .getSubscriptionCall
                                                              .call(
                                                        id: valueOrDefault(
                                                            currentUserDocument
                                                                ?.modelId,
                                                            ''),
                                                      );
                                                      _shouldSetState = true;
                                                      if (CloudpaymentsGroup
                                                              .getSubscriptionCall
                                                              .modelStatus(
                                                                (_model.getSubscribeCloudGame
                                                                        ?.jsonBody ??
                                                                    ''),
                                                              )
                                                              .toString() !=
                                                          'Active') {
                                                        logFirebaseEvent(
                                                            'Stack_update_app_state');
                                                        FFAppState()
                                                                .stopCubeRotate =
                                                            false;
                                                        logFirebaseEvent(
                                                            'Stack_navigate_to');
                                                        Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                            builder: (context) =>
                                                                SubPayWidget(
                                                              showThreeMove:
                                                                  false,
                                                            ),
                                                          ),
                                                        );
                                                        if (_shouldSetState)
                                                          setState(() {});
                                                        return;
                                                      }
                                                    }
                                                  }
                                                } else {
                                                  logFirebaseEvent(
                                                      'Stack_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState().Free3Moves =
                                                        functions
                                                            .additionGameFildsubtract(
                                                                FFAppState()
                                                                    .Free3Moves,
                                                                1);
                                                  });
                                                }

                                                // кубик двигается вверх вниз
                                                logFirebaseEvent(
                                                    'Stack_widget_animation');
                                                if (animationsMap[
                                                        'columnOnActionTriggerAnimation'] !=
                                                    null) {
                                                  animationsMap[
                                                          'columnOnActionTriggerAnimation']!
                                                      .controller
                                                      .stop();
                                                }
                                                if (_model.game666) {
                                                  // кидаем рандом кубика от 1 до 6
                                                  logFirebaseEvent(
                                                      'Stack_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState().cubeValue = 6;
                                                  });
                                                } else {
                                                  // кидаем рандом кубика от 1 до 6
                                                  logFirebaseEvent(
                                                      'Stack_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState().cubeValue =
                                                        random_data
                                                            .randomInteger(
                                                                1, 6);
                                                  });
                                                }

                                                logFirebaseEvent(
                                                    'Stack_widget_animation');
                                                if (animationsMap[
                                                        'stackOnActionTriggerAnimation'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'stackOnActionTriggerAnimation']!
                                                      .controller
                                                      .forward(from: 0.0);
                                                }
                                                if (FFAppState().cube666 == 3) {
                                                  if (FFAppState().cubeValue !=
                                                      6) {
                                                    // если выпало 3 шестерки и некст выпала не 6 то, перезапиши значение доски хода который мы записали при кидании первой шестерки
                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    setState(() {
                                                      FFAppState().boardValue =
                                                          FFAppState()
                                                              .cubeValue666;
                                                      FFAppState()
                                                              .stopCubeRotate =
                                                          false;
                                                    });
                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    setState(() {
                                                      FFAppState()
                                                          .cubeValue666 = 0;
                                                      FFAppState().cube666 = 0;
                                                    });
                                                    logFirebaseEvent(
                                                        'Stack_wait__delay');
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1000));
                                                    logFirebaseEvent(
                                                        'Stack_bottom_sheet');
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(_model
                                                                  .unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                Game666Widget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));

                                                    logFirebaseEvent(
                                                        'Stack_wait__delay');
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                2000));
                                                  }
                                                }
                                                if (FFAppState().cubeValue ==
                                                    6) {
                                                  if (FFAppState().boardValue ==
                                                      68) {
                                                    logFirebaseEvent(
                                                        'Stack_widget_animation');
                                                    if (animationsMap[
                                                            'imageOnActionTriggerAnimation1'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasImageTriggered1 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback((_) async =>
                                                              await animationsMap[
                                                                      'imageOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                    logFirebaseEvent(
                                                        'Stack_wait__delay');
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                2000));
                                                    // если кинули кубик и выпало 6 и попали на 68 клетку, то покажи карточку, где мы запишем ход и завершим игру
                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                              .visibilityInsightButtom =
                                                          false;
                                                      FFAppState()
                                                          .visibilityCard = 2;
                                                      FFAppState()
                                                              .stopCubeRotate =
                                                          false;
                                                    });
                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  }
                                                  if (FFAppState().cube666 ==
                                                      0) {
                                                    // Записываем изначальное положение фишки, если выпадет 666 подставим это значение, что бы вернуть обратно игрока
                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    setState(() {
                                                      FFAppState()
                                                              .cubeValue666 =
                                                          FFAppState()
                                                              .boardValue;
                                                    });
                                                  }
                                                  if ((FFAppState().boardValue == 62) ||
                                                      (FFAppState()
                                                              .boardValue ==
                                                          69) ||
                                                      (FFAppState()
                                                              .boardValue ==
                                                          70) ||
                                                      (FFAppState()
                                                              .boardValue ==
                                                          71) ||
                                                      (FFAppState()
                                                              .boardValue ==
                                                          64) ||
                                                      (FFAppState()
                                                              .boardValue ==
                                                          66) ||
                                                      (FFAppState()
                                                              .boardValue ==
                                                          65)) {
                                                    // в последних ходах, должны возвтращаться обратно в исходное положение
                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    FFAppState().update(() {
                                                      FFAppState().boardValue =
                                                          functions
                                                              .additionGameFild(
                                                                  FFAppState()
                                                                      .cubeValue,
                                                                  FFAppState()
                                                                      .boardValue);
                                                    });
                                                  } else {
                                                    if (FFAppState().cube666 ==
                                                        0) {
                                                      logFirebaseEvent(
                                                          'Stack_update_app_state');
                                                      setState(() {
                                                        FFAppState()
                                                                .cubeValue666 =
                                                            FFAppState()
                                                                .boardValue;
                                                      });
                                                    }
                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    FFAppState().update(() {
                                                      FFAppState().boardValue =
                                                          functions
                                                              .additionGameFild(
                                                                  FFAppState()
                                                                      .cubeValue,
                                                                  FFAppState()
                                                                      .boardValue);
                                                    });
                                                    logFirebaseEvent(
                                                        'Stack_widget_animation');
                                                    if (animationsMap[
                                                            'imageOnActionTriggerAnimation1'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasImageTriggered1 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback((_) async =>
                                                              await animationsMap[
                                                                      'imageOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                    logFirebaseEvent(
                                                        'Stack_wait__delay');
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                2000));
                                                    logFirebaseEvent(
                                                        'Stack_widget_animation');
                                                    if (animationsMap[
                                                            'imageOnActionTriggerAnimation1'] !=
                                                        null) {
                                                      animationsMap[
                                                              'imageOnActionTriggerAnimation1']!
                                                          .controller
                                                          .stop();
                                                    }
                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    FFAppState().update(() {
                                                      FFAppState().boardValue =
                                                          () {
                                                        if (FFAppState()
                                                                .boardValue ==
                                                            10) {
                                                          return 23;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            12) {
                                                          return 8;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            16) {
                                                          return 4;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            17) {
                                                          return 69;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            20) {
                                                          return 32;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            22) {
                                                          return 60;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            24) {
                                                          return 7;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            27) {
                                                          return 41;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            28) {
                                                          return 50;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            29) {
                                                          return 6;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            37) {
                                                          return 66;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            45) {
                                                          return 67;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            46) {
                                                          return 62;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            52) {
                                                          return 35;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            54) {
                                                          return 68;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            55) {
                                                          return 3;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            61) {
                                                          return 13;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            63) {
                                                          return 2;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            72) {
                                                          return 51;
                                                        } else if (FFAppState()
                                                                .boardValue ==
                                                            44) {
                                                          return 9;
                                                        } else {
                                                          return FFAppState()
                                                              .boardValue;
                                                        }
                                                      }();
                                                    });
                                                    logFirebaseEvent(
                                                        'Stack_widget_animation');
                                                    if (animationsMap[
                                                            'imageOnActionTriggerAnimation1'] !=
                                                        null) {
                                                      setState(() =>
                                                          hasImageTriggered1 =
                                                              true);
                                                      SchedulerBinding.instance
                                                          .addPostFrameCallback((_) async =>
                                                              await animationsMap[
                                                                      'imageOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                    }
                                                    logFirebaseEvent(
                                                        'Stack_wait__delay');
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                2000));
                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    setState(() {
                                                      FFAppState()
                                                              .stopCubeRotate =
                                                          false;
                                                      FFAppState()
                                                          .visibilityCard = 1;
                                                      FFAppState()
                                                              .visibilityCardBoolean =
                                                          false;
                                                    });
                                                    logFirebaseEvent(
                                                        'Stack_bottom_sheet');
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      barrierColor:
                                                          Color(0x00000000),
                                                      isDismissible: false,
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(_model
                                                                  .unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                Cube6Widget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));

                                                    if (_shouldSetState)
                                                      setState(() {});
                                                    return;
                                                  }
                                                } else {
                                                  logFirebaseEvent(
                                                      'Stack_update_app_state');
                                                  setState(() {
                                                    FFAppState().cube666 = 0;
                                                  });
                                                  logFirebaseEvent(
                                                      'Stack_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState().boardValue =
                                                        functions
                                                            .additionGameFild(
                                                                FFAppState()
                                                                    .cubeValue,
                                                                FFAppState()
                                                                    .boardValue);
                                                  });
                                                }

                                                if (FFAppState().oneGame ==
                                                    true) {
                                                  if (FFAppState().cubeValue !=
                                                      6) {
                                                    logFirebaseEvent(
                                                        'Stack_wait__delay');
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                2000));
                                                    // когда только начинаем играть, нужно показать карточку о том что первых ход, больше её не показываем
                                                    logFirebaseEvent(
                                                        'Stack_bottom_sheet');
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      barrierColor:
                                                          Color(0x00000000),
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(_model
                                                                  .unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                GameOneMoveWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));

                                                    logFirebaseEvent(
                                                        'Stack_update_app_state');
                                                    setState(() {
                                                      FFAppState().oneGame =
                                                          false;
                                                    });
                                                  }
                                                  logFirebaseEvent(
                                                      'Stack_update_app_state');
                                                  setState(() {
                                                    FFAppState().endGame68 = 1;
                                                  });
                                                }
                                                logFirebaseEvent(
                                                    'Stack_wait__delay');
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 300));
                                                logFirebaseEvent(
                                                    'Stack_widget_animation');
                                                if (animationsMap[
                                                        'imageOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  setState(() =>
                                                      hasImageTriggered1 =
                                                          true);
                                                  SchedulerBinding.instance
                                                      .addPostFrameCallback(
                                                          (_) async =>
                                                              await animationsMap[
                                                                      'imageOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                }
                                                logFirebaseEvent(
                                                    'Stack_wait__delay');
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 300));
                                                logFirebaseEvent(
                                                    'Stack_widget_animation');
                                                if (animationsMap[
                                                        'imageOnActionTriggerAnimation1'] !=
                                                    null) {
                                                  setState(() =>
                                                      hasImageTriggered1 =
                                                          true);
                                                  SchedulerBinding.instance
                                                      .addPostFrameCallback(
                                                          (_) async =>
                                                              await animationsMap[
                                                                      'imageOnActionTriggerAnimation1']!
                                                                  .controller
                                                                  .forward(
                                                                      from:
                                                                          0.0));
                                                }
                                                logFirebaseEvent(
                                                    'Stack_wait__delay');
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 300));
                                                logFirebaseEvent(
                                                    'Stack_update_app_state');
                                                FFAppState().update(() {
                                                  FFAppState()
                                                          .visibilityInsightButtom =
                                                      false;
                                                  FFAppState().visibilityCard =
                                                      2;
                                                  FFAppState().stopCubeRotate =
                                                      false;
                                                });
                                                logFirebaseEvent(
                                                    'Stack_widget_animation');
                                                if (animationsMap[
                                                        'columnOnActionTriggerAnimation'] !=
                                                    null) {
                                                  await animationsMap[
                                                          'columnOnActionTriggerAnimation']!
                                                      .controller
                                                    ..reset()
                                                    ..repeat(reverse: true);
                                                }
                                                if (_shouldSetState)
                                                  setState(() {});
                                              },
                                              child: Container(
                                                width: 82.0,
                                                height: 82.0,
                                                child: Stack(
                                                  children: [
                                                    if (FFAppState()
                                                            .cubeValue >=
                                                        6)
                                                      Image.asset(
                                                        'assets/images/Cube_6.png',
                                                        width: 82.0,
                                                        fit: BoxFit.contain,
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'imageOnActionTriggerAnimation2']!,
                                                      ),
                                                    if (FFAppState()
                                                            .cubeValue ==
                                                        5)
                                                      Image.asset(
                                                        'assets/images/Cube_5.png',
                                                        width: 82.0,
                                                        fit: BoxFit.contain,
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'imageOnActionTriggerAnimation3']!,
                                                      ),
                                                    if (FFAppState()
                                                            .cubeValue ==
                                                        4)
                                                      Image.asset(
                                                        'assets/images/Cube_4.png',
                                                        width: 82.0,
                                                        fit: BoxFit.contain,
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'imageOnActionTriggerAnimation4']!,
                                                      ),
                                                    if (FFAppState()
                                                            .cubeValue ==
                                                        3)
                                                      Image.asset(
                                                        'assets/images/Cube_3.png',
                                                        width: 82.0,
                                                        fit: BoxFit.contain,
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'imageOnActionTriggerAnimation5']!,
                                                      ),
                                                    if (FFAppState()
                                                            .cubeValue ==
                                                        2)
                                                      Image.asset(
                                                        'assets/images/Cube_2.png',
                                                        width: 82.0,
                                                        fit: BoxFit.contain,
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'imageOnActionTriggerAnimation6']!,
                                                      ),
                                                    if (FFAppState()
                                                            .cubeValue ==
                                                        1)
                                                      Image.asset(
                                                        'assets/images/Cube_1.png',
                                                        width: 82.0,
                                                        fit: BoxFit.contain,
                                                      ).animateOnActionTrigger(
                                                        animationsMap[
                                                            'imageOnActionTriggerAnimation7']!,
                                                      ),
                                                  ],
                                                ),
                                              ),
                                            ).animateOnActionTrigger(
                                              animationsMap[
                                                  'stackOnActionTriggerAnimation']!,
                                            ),
                                          ),
                                        ],
                                      ).animateOnActionTrigger(
                                        animationsMap[
                                            'columnOnActionTriggerAnimation']!,
                                      ),
                                      if (!valueOrDefault<bool>(
                                              currentUserDocument?.buyGame,
                                              false) &&
                                          !revenue_cat.activeEntitlementIds
                                              .contains(FFAppState().entitle))
                                        AuthUserStreamWidget(
                                          builder: (context) => Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              if ((FFAppState().Free3Moves >=
                                                      1) &&
                                                  (valueOrDefault<bool>(
                                                          currentUserDocument
                                                              ?.buyGame,
                                                          false) ==
                                                      false))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Осталось ${FFAppState().Free3Moves.toString()}${() {
                                                      if (FFAppState()
                                                              .Free3Moves >=
                                                          2) {
                                                        return ' хода ';
                                                      } else if (FFAppState()
                                                              .Free3Moves ==
                                                          0) {
                                                        return ' ходов ';
                                                      } else {
                                                        return ' ход ';
                                                      }
                                                    }()}в бесплатной игре',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                              if ((FFAppState().Free3Moves <=
                                                      0) &&
                                                  (valueOrDefault<bool>(
                                                          currentUserDocument
                                                              ?.buyGame,
                                                          false) ==
                                                      false))
                                                Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 16.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Нет бесплатных ходов',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .headlineMedium
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .headlineMediumFamily,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .redButton,
                                                          fontSize: 12.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .headlineMediumFamily),
                                                        ),
                                                  ),
                                                ),
                                            ],
                                          ),
                                        ),
                                    ],
                                  ),
                                ),
                              ),
                            if (FFAppState().visibilityCard == 2)
                              Align(
                                alignment: AlignmentDirectional(0.00, 1.00),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    logFirebaseEvent(
                                        'FIELD_GAME_PAGE_card_small_ON_TAP');
                                    logFirebaseEvent(
                                        'card_small_update_app_state');
                                    FFAppState().update(() {
                                      FFAppState().visibilityCard = 3;
                                    });
                                  },
                                  child: Container(
                                    width: 295.0,
                                    height: 390.0,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFAE74F8),
                                      boxShadow: [
                                        BoxShadow(
                                          blurRadius: 10.0,
                                          color: Color(0x49AE74F8),
                                          offset: Offset(1.0, 1.0),
                                          spreadRadius: 10.0,
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(22.0),
                                    ),
                                    child: Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          6.0, 6.0, 6.0, 6.0),
                                      child: Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(16.0),
                                          border: Border.all(
                                            color: Color(0xFFD4BAF6),
                                            width: 1.0,
                                          ),
                                        ),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  18.0, 32.0, 18.0, 12.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      FFAppState()
                                                          .boardValue
                                                          .toString(),
                                                      textAlign: TextAlign.end,
                                                      style:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily,
                                                                color: Color(
                                                                    0x46FFFFFF),
                                                                fontSize: 120.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                                lineHeight: 0.8,
                                                              ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Text(
                                                functions.titleGameLowerCase(
                                                    fieldGameGameFieldRecord!
                                                        .title),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .displaySmall
                                                        .override(
                                                          fontFamily:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .displaySmallFamily,
                                                          fontSize: 22.0,
                                                          useGoogleFonts: GoogleFonts
                                                                  .asMap()
                                                              .containsKey(
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmallFamily),
                                                          lineHeight: 1.0,
                                                        ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 8.0, 0.0, 0.0),
                                                child: Text(
                                                  fieldGameGameFieldRecord!
                                                      .description,
                                                  maxLines: 2,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyMediumFamily,
                                                        fontSize: 14.0,
                                                        useGoogleFonts: GoogleFonts
                                                                .asMap()
                                                            .containsKey(
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMediumFamily),
                                                        lineHeight: 1.4,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation1']!),
                              ),
                            if (FFAppState().visibilityCard == 3)
                              AnimatedContainer(
                                duration: Duration(milliseconds: 100),
                                curve: Curves.easeInOut,
                                width: double.infinity,
                                height: double.infinity,
                                decoration: BoxDecoration(
                                  color: Color(0xFFAE74F8),
                                  borderRadius: BorderRadius.circular(37.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 6.0, 0.0, 6.0),
                                  child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: Stack(
                                      alignment: AlignmentDirectional(0.0, 1.0),
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  6.0, 0.0, 6.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: double.infinity,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(32.0),
                                              border: Border.all(
                                                color: Color(0xFFEEE9F4),
                                                width: 1.0,
                                              ),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      18.0, 0.0, 18.0, 3.0),
                                              child: SingleChildScrollView(
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  40.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .end,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        5.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              FFAppState()
                                                                  .boardValue
                                                                  .toString(),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily,
                                                                    color: Color(
                                                                        0x46FFFFFF),
                                                                    fontSize:
                                                                        120.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                    useGoogleFonts: GoogleFonts
                                                                            .asMap()
                                                                        .containsKey(
                                                                            FlutterFlowTheme.of(context).bodyMediumFamily),
                                                                    lineHeight:
                                                                        0.8,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  20.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        functions
                                                            .titleGameLowerCase(
                                                                fieldGameGameFieldRecord!
                                                                    .title),
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .displaySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .displaySmallFamily,
                                                                  fontSize:
                                                                      30.0,
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .displaySmallFamily),
                                                                  lineHeight:
                                                                      1.0,
                                                                ),
                                                      ),
                                                    ),
                                                    FlutterFlowAudioPlayer(
                                                      audio: Audio.network(
                                                        fieldGameGameFieldRecord!
                                                            .audio,
                                                        metas: Metas(
                                                          id: 'sample3.mp3-a4192107',
                                                        ),
                                                      ),
                                                      titleTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                fontSize: 0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      playbackDurationTextStyle:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Poppins',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .primaryBackground,
                                                                fontSize: 0.0,
                                                                useGoogleFonts: GoogleFonts
                                                                        .asMap()
                                                                    .containsKey(
                                                                        FlutterFlowTheme.of(context)
                                                                            .bodyMediumFamily),
                                                              ),
                                                      fillColor:
                                                          Color(0xFFAE74F8),
                                                      playbackButtonColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      activeTrackColor:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryBackground,
                                                      elevation: 0.0,
                                                      pauseOnNavigate: false,
                                                      playInBackground:
                                                          PlayInBackground
                                                              .disabledRestoreOnForeground,
                                                    ),
                                                    Stack(
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      18.0,
                                                                      0.0,
                                                                      18.0),
                                                          child: Text(
                                                            fieldGameGameFieldRecord!
                                                                .description,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodySmall
                                                                .override(
                                                                  fontFamily: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodySmallFamily,
                                                                  color: Color(
                                                                      0xFFFEFEFF),
                                                                  useGoogleFonts: GoogleFonts
                                                                          .asMap()
                                                                      .containsKey(
                                                                          FlutterFlowTheme.of(context)
                                                                              .bodySmallFamily),
                                                                  lineHeight:
                                                                      1.4,
                                                                ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  70.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(),
                                                        child: Container(
                                                          width:
                                                              double.infinity,
                                                          color:
                                                              Color(0x00000000),
                                                          child:
                                                              ExpandableNotifier(
                                                            initialExpanded:
                                                                true,
                                                            child:
                                                                ExpandablePanel(
                                                              header: Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Text(
                                                                    'Записать мысли',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodySmall
                                                                        .override(
                                                                          fontFamily:
                                                                              FlutterFlowTheme.of(context).bodySmallFamily,
                                                                          fontWeight:
                                                                              FontWeight.w600,
                                                                          useGoogleFonts:
                                                                              GoogleFonts.asMap().containsKey(FlutterFlowTheme.of(context).bodySmallFamily),
                                                                        ),
                                                                  ),
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child: Icon(
                                                                      FFIcons
                                                                          .kedit2,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              collapsed: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                children: [
                                                                  Padding(
                                                                    padding: EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            0.0,
                                                                            20.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        Container(
                                                                      width: double
                                                                          .infinity,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0x19FFFFFF),
                                                                        borderRadius:
                                                                            BorderRadius.circular(12.0),
                                                                      ),
                                                                      child:
                                                                          Padding(
                                                                        padding: EdgeInsetsDirectional.fromSTEB(
                                                                            8.0,
                                                                            8.0,
                                                                            8.0,
                                                                            8.0),
                                                                        child:
                                                                            TextFormField(
                                                                          controller:
                                                                              _model.inputInsiteGameController,
                                                                          onChanged: (_) =>
                                                                              EasyDebounce.debounce(
                                                                            '_model.inputInsiteGameController',
                                                                            Duration(milliseconds: 100),
                                                                            () async {
                                                                              logFirebaseEvent('FIELD_GAME_input_insite_game_ON_TEXTFIEL');
                                                                              logFirebaseEvent('input_insite_game_update_app_state');
                                                                              FFAppState().update(() {
                                                                                FFAppState().visibilityInsightButtom = true;
                                                                              });
                                                                            },
                                                                          ),
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            hintText:
                                                                                '|',
                                                                            hintStyle:
                                                                                FlutterFlowTheme.of(context).bodySmall,
                                                                            enabledBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            focusedBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            errorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                UnderlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: Color(0x00000000),
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: const BorderRadius.only(
                                                                                topLeft: Radius.circular(4.0),
                                                                                topRight: Radius.circular(4.0),
                                                                              ),
                                                                            ),
                                                                          ),
                                                                          style:
                                                                              FlutterFlowTheme.of(context).bodyMedium,
                                                                          maxLines:
                                                                              4,
                                                                          validator: _model
                                                                              .inputInsiteGameControllerValidator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                              expanded:
                                                                  Container(),
                                                              theme:
                                                                  ExpandableThemeData(
                                                                tapHeaderToExpand:
                                                                    true,
                                                                tapBodyToExpand:
                                                                    false,
                                                                tapBodyToCollapse:
                                                                    false,
                                                                headerAlignment:
                                                                    ExpandablePanelHeaderAlignment
                                                                        .center,
                                                                hasIcon: false,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  7.0, 0.0, 7.0, 1.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 64.0,
                                            decoration: BoxDecoration(
                                              gradient: LinearGradient(
                                                colors: [
                                                  Color(0x22AE74F8),
                                                  Color(0xEDAE74F8)
                                                ],
                                                stops: [0.0, 1.0],
                                                begin: AlignmentDirectional(
                                                    0.0, -1.0),
                                                end: AlignmentDirectional(
                                                    0, 1.0),
                                              ),
                                              borderRadius: BorderRadius.only(
                                                bottomLeft:
                                                    Radius.circular(32.0),
                                                bottomRight:
                                                    Radius.circular(32.0),
                                                topLeft: Radius.circular(0.0),
                                                topRight: Radius.circular(0.0),
                                              ),
                                            ),
                                          ),
                                        ),
                                        if (FFAppState()
                                                .visibilityInsightButtom ==
                                            true)
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    24.0, 24.0, 24.0, 16.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                logFirebaseEvent(
                                                    'FIELD_GAME_Container_ypiu9d5q_ON_TAP');
                                                logFirebaseEvent(
                                                    'Button_Exp_backend_call');

                                                await widget
                                                    .currentGame!.reference
                                                    .update({
                                                  'moves':
                                                      FieldValue.arrayUnion([
                                                    getLeelaMovesFirestoreData(
                                                      createLeelaMovesStruct(
                                                        move: FFAppState()
                                                            .boardValue,
                                                        insite: _model
                                                            .inputInsiteGameController
                                                            .text,
                                                        clearUnsetFields: false,
                                                      ),
                                                      true,
                                                    )
                                                  ]),
                                                });
                                                logFirebaseEvent(
                                                    'Button_Exp_update_app_state');
                                                FFAppState().update(() {
                                                  FFAppState().visibilityCard =
                                                      1;
                                                });
                                                if ((FFAppState().boardValue == 10) ||
                                                    (FFAppState().boardValue ==
                                                        12) ||
                                                    (FFAppState().boardValue ==
                                                        16) ||
                                                    (FFAppState().boardValue ==
                                                        17) ||
                                                    (FFAppState().boardValue ==
                                                        20) ||
                                                    (FFAppState().boardValue ==
                                                        22) ||
                                                    (FFAppState().boardValue ==
                                                        24) ||
                                                    (FFAppState().boardValue ==
                                                        27) ||
                                                    (FFAppState().boardValue ==
                                                        28) ||
                                                    (FFAppState().boardValue ==
                                                        29) ||
                                                    (FFAppState().boardValue ==
                                                        37) ||
                                                    (FFAppState().boardValue ==
                                                        45) ||
                                                    (FFAppState().boardValue ==
                                                        46) ||
                                                    (FFAppState().boardValue ==
                                                        52) ||
                                                    (FFAppState().boardValue ==
                                                        54) ||
                                                    (FFAppState().boardValue ==
                                                        55) ||
                                                    (FFAppState().boardValue ==
                                                        61) ||
                                                    (FFAppState().boardValue ==
                                                        63) ||
                                                    (FFAppState().boardValue ==
                                                        72) ||
                                                    (FFAppState().boardValue ==
                                                        44)) {
                                                  logFirebaseEvent(
                                                      'Button_Exp_update_app_state');
                                                  setState(() {
                                                    FFAppState()
                                                        .stopCubeRotate = true;
                                                  });
                                                  if (!FFAppState()
                                                      .stopCubeRotate) {
                                                    return;
                                                  }
                                                  logFirebaseEvent(
                                                      'Button_Exp_wait__delay');
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 3000));
                                                  logFirebaseEvent(
                                                      'Button_Exp_widget_animation');
                                                  if (animationsMap[
                                                          'imageOnActionTriggerAnimation1'] !=
                                                      null) {
                                                    setState(() =>
                                                        hasImageTriggered1 =
                                                            true);
                                                    SchedulerBinding.instance
                                                        .addPostFrameCallback((_) async =>
                                                            await animationsMap[
                                                                    'imageOnActionTriggerAnimation1']!
                                                                .controller
                                                                .forward(
                                                                    from: 0.0));
                                                  }
                                                  logFirebaseEvent(
                                                      'Button_Exp_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState()
                                                        .visibilityCard = 2;
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_Exp_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState().boardValue =
                                                        () {
                                                      if (FFAppState()
                                                              .boardValue ==
                                                          10) {
                                                        return 23;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          12) {
                                                        return 8;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          16) {
                                                        return 4;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          17) {
                                                        return 69;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          20) {
                                                        return 32;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          22) {
                                                        return 60;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          24) {
                                                        return 7;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          27) {
                                                        return 41;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          28) {
                                                        return 50;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          29) {
                                                        return 6;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          37) {
                                                        return 66;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          45) {
                                                        return 67;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          46) {
                                                        return 62;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          52) {
                                                        return 35;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          54) {
                                                        return 68;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          55) {
                                                        return 3;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          61) {
                                                        return 13;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          63) {
                                                        return 2;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          72) {
                                                        return 51;
                                                      } else if (FFAppState()
                                                              .boardValue ==
                                                          44) {
                                                        return 9;
                                                      } else {
                                                        return FFAppState()
                                                            .boardValue;
                                                      }
                                                    }();
                                                  });
                                                  if (FFAppState().boardValue ==
                                                      68) {
                                                    logFirebaseEvent(
                                                        'Button_Exp_update_app_state');
                                                    setState(() {
                                                      FFAppState().endGame68 =
                                                          1;
                                                    });
                                                  }
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_Exp_update_app_state');
                                                  FFAppState().update(() {
                                                    FFAppState().endGame68 =
                                                        valueOrDefault<int>(
                                                      FFAppState().boardValue ==
                                                              68
                                                          ? (FFAppState()
                                                                  .endGame68 +
                                                              2)
                                                          : 1,
                                                      1,
                                                    );
                                                  });
                                                }

                                                logFirebaseEvent(
                                                    'Button_Exp_update_app_state');
                                                setState(() {
                                                  FFAppState().stopCubeRotate =
                                                      false;
                                                });
                                                if ((FFAppState().boardValue == 69) ||
                                                    (FFAppState().boardValue ==
                                                        70) ||
                                                    (FFAppState().boardValue ==
                                                        71) ||
                                                    (FFAppState().boardValue >=
                                                        73)) {
                                                  logFirebaseEvent(
                                                      'Button_Exp_update_app_state');
                                                  setState(() {
                                                    FFAppState().boardValue =
                                                        FFAppState().boardValue >
                                                                72
                                                            ? (FFAppState()
                                                                    .boardValue -
                                                                FFAppState()
                                                                    .cubeValue)
                                                            : FFAppState()
                                                                .boardValue;
                                                    FFAppState()
                                                        .stopCubeRotate = false;
                                                  });
                                                  if ((FFAppState()
                                                              .visibilityCard !=
                                                          2) &&
                                                      (FFAppState().endGame ==
                                                          false)) {
                                                    logFirebaseEvent(
                                                        'Button_Exp_wait__delay');
                                                    await Future.delayed(
                                                        const Duration(
                                                            milliseconds:
                                                                1000));
                                                    logFirebaseEvent(
                                                        'Button_Exp_bottom_sheet');
                                                    await showModalBottomSheet(
                                                      isScrollControlled: true,
                                                      backgroundColor:
                                                          Colors.transparent,
                                                      barrierColor:
                                                          Color(0x00000000),
                                                      enableDrag: false,
                                                      context: context,
                                                      builder: (context) {
                                                        return GestureDetector(
                                                          onTap: () => FocusScope
                                                                  .of(context)
                                                              .requestFocus(_model
                                                                  .unfocusNode),
                                                          child: Padding(
                                                            padding: MediaQuery
                                                                .viewInsetsOf(
                                                                    context),
                                                            child:
                                                                GameEndMoveWidget(),
                                                          ),
                                                        );
                                                      },
                                                    ).then((value) =>
                                                        safeSetState(() {}));

                                                    logFirebaseEvent(
                                                        'Button_Exp_update_app_state');
                                                    setState(() {
                                                      FFAppState().endGame =
                                                          true;
                                                    });
                                                  }
                                                }
                                                if (FFAppState().endGame68 ==
                                                    3) {
                                                  logFirebaseEvent(
                                                      'Button_Exp_wait__delay');
                                                  await Future.delayed(
                                                      const Duration(
                                                          milliseconds: 1500));
                                                  logFirebaseEvent(
                                                      'Button_Exp_backend_call');

                                                  await currentUserReference!
                                                      .update(
                                                          createUsersRecordData(
                                                    buyGame: false,
                                                  ));
                                                  logFirebaseEvent(
                                                      'Button_Exp_backend_call');

                                                  await widget
                                                      .currentGame!.reference
                                                      .update({
                                                    ...createGamesRecordData(
                                                      isEnd: true,
                                                    ),
                                                    'moves':
                                                        FieldValue.arrayUnion([
                                                      getLeelaMovesFirestoreData(
                                                        createLeelaMovesStruct(
                                                          move: FFAppState()
                                                              .boardValue,
                                                          insite: _model
                                                              .inputInsiteGameController
                                                              .text,
                                                          clearUnsetFields:
                                                              false,
                                                        ),
                                                        true,
                                                      )
                                                    ]),
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_Exp_navigate_to');
                                                  Navigator.pushAndRemoveUntil(
                                                    context,
                                                    MaterialPageRoute(
                                                      builder: (context) =>
                                                          EndGameDageWidget(),
                                                    ),
                                                    (r) => false,
                                                  );
                                                  logFirebaseEvent(
                                                      'Button_Exp_update_app_state');
                                                  setState(() {
                                                    FFAppState().endGame68 = 0;
                                                  });
                                                  logFirebaseEvent(
                                                      'Button_Exp_update_app_state');
                                                  setState(() {
                                                    FFAppState().oneGame = true;
                                                  });
                                                  return;
                                                } else {
                                                  logFirebaseEvent(
                                                      'Button_Exp_clear_text_fields_pin_codes');
                                                  setState(() {
                                                    _model
                                                        .inputInsiteGameController
                                                        ?.clear();
                                                  });
                                                }
                                              },
                                              child: wrapWithModel(
                                                model: _model.buttonExpModel,
                                                updateCallback: () =>
                                                    setState(() {}),
                                                child: ButtonExpWidget(
                                                  text: 'Готово',
                                                ),
                                              ),
                                            ).animateOnPageLoad(animationsMap[
                                                'buttonExpOnPageLoadAnimation']!),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ).animateOnPageLoad(animationsMap[
                                  'containerOnPageLoadAnimation2']!),
                          ],
                        ),
                      ),
                    ),
                    if (FFAppState().visibilityCard > 1)
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                        child: FlutterFlowIconButton(
                          borderColor: Colors.transparent,
                          borderRadius: 30.0,
                          borderWidth: 1.0,
                          buttonSize: 56.0,
                          fillColor: FlutterFlowTheme.of(context).primaryText,
                          icon: Icon(
                            FFIcons.kclose2,
                            color: Color(0xFF3382CA),
                            size: 30.0,
                          ),
                          onPressed: () async {
                            logFirebaseEvent(
                                'FIELD_GAME_PAGE_close2_ICN_ON_TAP');
                            if (!_model.stopCard) {
                              return;
                            }
                            logFirebaseEvent('IconButton_update_widget_state');
                            setState(() {
                              _model.stopCard = false;
                            });
                            logFirebaseEvent('IconButton_backend_call');

                            await widget.currentGame!.reference.update({
                              'moves': FieldValue.arrayUnion([
                                getLeelaMovesFirestoreData(
                                  createLeelaMovesStruct(
                                    move: FFAppState().boardValue,
                                    insite:
                                        _model.inputInsiteGameController.text,
                                    clearUnsetFields: false,
                                  ),
                                  true,
                                )
                              ]),
                            });
                            logFirebaseEvent('IconButton_update_app_state');
                            FFAppState().update(() {
                              FFAppState().visibilityCard = 1;
                            });
                            if ((FFAppState().boardValue == 10) ||
                                (FFAppState().boardValue == 12) ||
                                (FFAppState().boardValue == 16) ||
                                (FFAppState().boardValue == 17) ||
                                (FFAppState().boardValue == 20) ||
                                (FFAppState().boardValue == 22) ||
                                (FFAppState().boardValue == 24) ||
                                (FFAppState().boardValue == 27) ||
                                (FFAppState().boardValue == 28) ||
                                (FFAppState().boardValue == 29) ||
                                (FFAppState().boardValue == 37) ||
                                (FFAppState().boardValue == 45) ||
                                (FFAppState().boardValue == 46) ||
                                (FFAppState().boardValue == 52) ||
                                (FFAppState().boardValue == 54) ||
                                (FFAppState().boardValue == 55) ||
                                (FFAppState().boardValue == 61) ||
                                (FFAppState().boardValue == 63) ||
                                (FFAppState().boardValue == 72) ||
                                (FFAppState().boardValue == 44)) {
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().stopCubeRotate = true;
                              });
                              if (!FFAppState().stopCubeRotate) {
                                return;
                              }
                              logFirebaseEvent('IconButton_wait__delay');
                              await Future.delayed(
                                  const Duration(milliseconds: 3000));
                              logFirebaseEvent('IconButton_widget_animation');
                              if (animationsMap[
                                      'imageOnActionTriggerAnimation1'] !=
                                  null) {
                                setState(() => hasImageTriggered1 = true);
                                SchedulerBinding.instance.addPostFrameCallback(
                                    (_) async => await animationsMap[
                                            'imageOnActionTriggerAnimation1']!
                                        .controller
                                        .forward(from: 0.0));
                              }
                              logFirebaseEvent('IconButton_update_app_state');
                              FFAppState().update(() {
                                FFAppState().visibilityCard = 2;
                              });
                              logFirebaseEvent('IconButton_update_app_state');
                              FFAppState().update(() {
                                FFAppState().boardValue = () {
                                  if (FFAppState().boardValue == 10) {
                                    return 23;
                                  } else if (FFAppState().boardValue == 12) {
                                    return 8;
                                  } else if (FFAppState().boardValue == 16) {
                                    return 4;
                                  } else if (FFAppState().boardValue == 17) {
                                    return 69;
                                  } else if (FFAppState().boardValue == 20) {
                                    return 32;
                                  } else if (FFAppState().boardValue == 22) {
                                    return 60;
                                  } else if (FFAppState().boardValue == 24) {
                                    return 7;
                                  } else if (FFAppState().boardValue == 27) {
                                    return 41;
                                  } else if (FFAppState().boardValue == 28) {
                                    return 50;
                                  } else if (FFAppState().boardValue == 29) {
                                    return 6;
                                  } else if (FFAppState().boardValue == 37) {
                                    return 66;
                                  } else if (FFAppState().boardValue == 45) {
                                    return 67;
                                  } else if (FFAppState().boardValue == 46) {
                                    return 62;
                                  } else if (FFAppState().boardValue == 52) {
                                    return 35;
                                  } else if (FFAppState().boardValue == 54) {
                                    return 68;
                                  } else if (FFAppState().boardValue == 55) {
                                    return 3;
                                  } else if (FFAppState().boardValue == 61) {
                                    return 13;
                                  } else if (FFAppState().boardValue == 63) {
                                    return 2;
                                  } else if (FFAppState().boardValue == 72) {
                                    return 51;
                                  } else if (FFAppState().boardValue == 44) {
                                    return 9;
                                  } else {
                                    return FFAppState().boardValue;
                                  }
                                }();
                              });
                              if (FFAppState().boardValue == 68) {
                                logFirebaseEvent('IconButton_update_app_state');
                                setState(() {
                                  FFAppState().endGame68 = 1;
                                });
                              }
                            } else {
                              logFirebaseEvent('IconButton_update_app_state');
                              FFAppState().update(() {
                                FFAppState().endGame68 = valueOrDefault<int>(
                                  FFAppState().boardValue == 68
                                      ? (FFAppState().endGame68 + 2)
                                      : 1,
                                  1,
                                );
                              });
                            }

                            logFirebaseEvent('IconButton_update_app_state');
                            setState(() {
                              FFAppState().stopCubeRotate = false;
                            });
                            logFirebaseEvent('IconButton_update_widget_state');
                            setState(() {
                              _model.stopCard = true;
                            });
                            if ((FFAppState().boardValue == 69) ||
                                (FFAppState().boardValue == 70) ||
                                (FFAppState().boardValue == 71) ||
                                (FFAppState().boardValue >= 73)) {
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().boardValue =
                                    FFAppState().boardValue > 72
                                        ? (FFAppState().boardValue -
                                            FFAppState().cubeValue)
                                        : FFAppState().boardValue;
                                FFAppState().stopCubeRotate = false;
                              });
                              if ((FFAppState().visibilityCard != 2) &&
                                  (FFAppState().endGame == false)) {
                                logFirebaseEvent('IconButton_wait__delay');
                                await Future.delayed(
                                    const Duration(milliseconds: 1000));
                                logFirebaseEvent('IconButton_bottom_sheet');
                                await showModalBottomSheet(
                                  isScrollControlled: true,
                                  backgroundColor: Colors.transparent,
                                  barrierColor: Color(0x00000000),
                                  enableDrag: false,
                                  context: context,
                                  builder: (context) {
                                    return GestureDetector(
                                      onTap: () => FocusScope.of(context)
                                          .requestFocus(_model.unfocusNode),
                                      child: Padding(
                                        padding:
                                            MediaQuery.viewInsetsOf(context),
                                        child: GameEndMoveWidget(),
                                      ),
                                    );
                                  },
                                ).then((value) => safeSetState(() {}));

                                logFirebaseEvent('IconButton_update_app_state');
                                setState(() {
                                  FFAppState().endGame = true;
                                });
                              }
                            }
                            if (FFAppState().endGame68 == 3) {
                              logFirebaseEvent('IconButton_wait__delay');
                              await Future.delayed(
                                  const Duration(milliseconds: 1500));
                              logFirebaseEvent('IconButton_backend_call');

                              await currentUserReference!
                                  .update(createUsersRecordData(
                                buyGame: false,
                              ));
                              logFirebaseEvent('IconButton_backend_call');

                              await widget.currentGame!.reference.update({
                                ...createGamesRecordData(
                                  isEnd: true,
                                ),
                                'moves': FieldValue.arrayUnion([
                                  getLeelaMovesFirestoreData(
                                    createLeelaMovesStruct(
                                      move: FFAppState().boardValue,
                                      insite:
                                          _model.inputInsiteGameController.text,
                                      clearUnsetFields: false,
                                    ),
                                    true,
                                  )
                                ]),
                              });
                              logFirebaseEvent('IconButton_navigate_to');
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EndGameDageWidget(),
                                ),
                                (r) => false,
                              );
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().endGame68 = 0;
                              });
                              logFirebaseEvent('IconButton_update_app_state');
                              setState(() {
                                FFAppState().oneGame = true;
                              });
                              return;
                            } else {
                              logFirebaseEvent(
                                  'IconButton_clear_text_fields_pin_codes');
                              setState(() {
                                _model.inputInsiteGameController?.clear();
                              });
                            }
                          },
                        ).animateOnPageLoad(
                            animationsMap['iconButtonOnPageLoadAnimation']!),
                      ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
