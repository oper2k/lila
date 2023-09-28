import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_gradient/button_gradient_widget.dart';
import '/components/button_star_game/button_star_game_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/field_game/field_game_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'rules_game_model.dart';
export 'rules_game_model.dart';

class RulesGameWidget extends StatefulWidget {
  const RulesGameWidget({Key? key}) : super(key: key);

  @override
  _RulesGameWidgetState createState() => _RulesGameWidgetState();
}

class _RulesGameWidgetState extends State<RulesGameWidget> {
  late RulesGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RulesGameModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'Rules_Game'});
  }

  @override
  void dispose() {
    _model.dispose();

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
        List<GamesRecord> rulesGameGamesRecordList = snapshot.data!;
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
                leading: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('RULES_GAME_Container_ep66hd4m_ON_TAP');
                    logFirebaseEvent('Container_navigate_back');
                    Navigator.pop(context);
                  },
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Align(
                      alignment: AlignmentDirectional(0.00, 1.00),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          FFIcons.kleft,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 16.0,
                        ),
                      ),
                    ),
                  ),
                ),
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
            body: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Правила игры',
                      style: FlutterFlowTheme.of(context).displaySmall.override(
                            fontFamily:
                                FlutterFlowTheme.of(context).displaySmallFamily,
                            useGoogleFonts: GoogleFonts.asMap().containsKey(
                                FlutterFlowTheme.of(context)
                                    .displaySmallFamily),
                            lineHeight: 1.2,
                          ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        '1. Однажды начатая игра, должна быть закончена!',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        '2. Чтобы начать игру, необходимо озвучить свой запрос и выбросить 6 на кубике. Это означает, что именно с этим запросом Лили впустила тебя в игру. Ответ на этот вопрос необходимо получить именно сейчас.',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        '3. Если выпадает любое число, кроме 6, переформулируй запрос и кинь кубик еще раз.',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        '4. Запрос может быть любым: финансовый, на тему отношений, личностный и т.д.',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        '5. Обязательно запиши точную формулировку запроса.',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        '6. Если играешь впервые, то Лила как бы \"приподнимает\" тебя над твоей жизнью, и ты видишь её со стороны. Тем самым, можешь получить ответы во многих сферах жизни, если Лила на это укажет.',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                      child: Text(
                        '7. Цифра 6 на кубике означает сделать ещё 1 бросок.',
                        style: FlutterFlowTheme.of(context).bodySmall.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodySmallFamily,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context).bodySmallFamily),
                              lineHeight: 1.4,
                            ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0.00, 1.00),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 27.0, 0.0, 20.0),
                        child: Builder(
                          builder: (context) {
                            final game = rulesGameGamesRecordList
                                .toList()
                                .take(1)
                                .toList();
                            if (game.isEmpty) {
                              return ButtonStarGameWidget();
                            }
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children: List.generate(game.length, (gameIndex) {
                                final gameItem = game[gameIndex];
                                return Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 19.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      logFirebaseEvent(
                                          'RULES_GAME_Container_4ktnly73_ON_TAP');
                                      logFirebaseEvent(
                                          'Button_Gradient_backend_call');

                                      var gamesRecordReference =
                                          GamesRecord.createDoc(
                                              currentUserReference!);
                                      await gamesRecordReference
                                          .set(createGamesRecordData(
                                        isEnd: false,
                                      ));
                                      _model.newGame =
                                          GamesRecord.getDocumentFromData(
                                              createGamesRecordData(
                                                isEnd: false,
                                              ),
                                              gamesRecordReference);
                                      logFirebaseEvent(
                                          'Button_Gradient_update_app_state');
                                      FFAppState().update(() {
                                        FFAppState().boardValue =
                                            FFAppState().boardValue;
                                        FFAppState().cubeValue =
                                            FFAppState().cubeValue;
                                        FFAppState().endGame68 = 0;
                                      });
                                      logFirebaseEvent(
                                          'Button_Gradient_navigate_to');
                                      Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => FieldGameWidget(
                                            currentGame: _model.newGame,
                                          ),
                                        ),
                                        (r) => false,
                                      );

                                      setState(() {});
                                    },
                                    child: ButtonGradientWidget(
                                      key: Key(
                                          'Key4kt_${gameIndex}_of_${game.length}'),
                                      text: 'Начать игру',
                                    ),
                                  ),
                                );
                              }),
                            );
                          },
                        ),
                      ),
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
