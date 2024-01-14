import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_gradient/button_gradient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'game_end_move_model.dart';
export 'game_end_move_model.dart';

class GameEndMoveWidget extends StatefulWidget {
  const GameEndMoveWidget({Key? key}) : super(key: key);

  @override
  _GameEndMoveWidgetState createState() => _GameEndMoveWidgetState();
}

class _GameEndMoveWidgetState extends State<GameEndMoveWidget> {
  late GameEndMoveModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GameEndMoveModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<List<GamesRecord>>(
      stream: queryGamesRecord(
        parent: currentUserReference,
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
                    Align(
                      alignment: AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 58.0, 0.0, 0.0),
                        child: Text(
                          'Подсказка',
                          textAlign: TextAlign.start,
                          style: FlutterFlowTheme.of(context).displaySmall,
                        ),
                      ),
                    ),
                    Text(
                      'Для этой клетки создай намерение через «Я ХОЧУ...» и кидай кубик. Запоминай формулировку',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 80.0, 0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          logFirebaseEvent(
                              'GAME_END_MOVE_Container_uripxr1o_ON_TAP');
                          logFirebaseEvent('Button_Gradient_bottom_sheet');
                          Navigator.pop(context);
                        },
                        child: wrapWithModel(
                          model: _model.buttonGradientModel,
                          updateCallback: () => setState(() {}),
                          child: ButtonGradientWidget(
                            text: 'Понятно',
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
