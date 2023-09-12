import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/question_game/question_game_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_star_game_model.dart';
export 'button_star_game_model.dart';

class ButtonStarGameWidget extends StatefulWidget {
  const ButtonStarGameWidget({Key? key}) : super(key: key);

  @override
  _ButtonStarGameWidgetState createState() => _ButtonStarGameWidgetState();
}

class _ButtonStarGameWidgetState extends State<ButtonStarGameWidget> {
  late ButtonStarGameModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonStarGameModel());
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
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(3.0, 3.0, 3.0, 3.0),
          child: Container(
            width: double.infinity,
            height: 48.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFF3359E6), Color(0xFFD8A6FF)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(-0.64, 1.0),
                end: AlignmentDirectional(0.64, -1.0),
              ),
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Align(
              alignment: AlignmentDirectional(0.00, 0.00),
              child: Text(
                'Начать игру',
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ),
        ),
        InkWell(
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          hoverColor: Colors.transparent,
          highlightColor: Colors.transparent,
          onTap: () async {
            logFirebaseEvent('BUTTON_STAR_GAME_Container_onu7h2y5_ON_T');
            logFirebaseEvent('Container_navigate_to');
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => QuestionGameWidget(),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: 54.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              border: Border.all(
                color: Color(0xFF3359E6),
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
