import '/components/button_gradient/button_gradient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'cube6_model.dart';
export 'cube6_model.dart';

class Cube6Widget extends StatefulWidget {
  const Cube6Widget({Key? key}) : super(key: key);

  @override
  _Cube6WidgetState createState() => _Cube6WidgetState();
}

class _Cube6WidgetState extends State<Cube6Widget> {
  late Cube6Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Cube6Model());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 35.0, 24.0, 45.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/Cube_6.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 26.0, 0.0, 0.0),
              child: Text(
                '6 означает бросить кубик еще раз',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).displaySmall,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 250.0, 0.0, 0.0),
              child: InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('CUBE_6_COMP_Container_y4ovdze2_ON_TAP');
                  if (FFAppState().boardValue == 68) {
                    logFirebaseEvent('Button_Gradient_update_app_state');
                    setState(() {
                      FFAppState().visibilityCard = 2;
                    });
                  }
                  logFirebaseEvent('Button_Gradient_update_app_state');
                  setState(() {
                    FFAppState().cube666 = FFAppState().cube666 + 1;
                    FFAppState().visibilityCard = 1;
                    FFAppState().GameEnd666 = true;
                  });
                  if (FFAppState().oneGame) {
                    if (FFAppState().cube666 == 2) {
                      if (FFAppState().cubeValue != 6) {
                        logFirebaseEvent('Button_Gradient_update_app_state');
                        setState(() {
                          FFAppState().boardValue = FFAppState().cubeValue666;
                        });
                      }
                    }
                  } else {
                    if (FFAppState().cube666 == 3) {
                      if (FFAppState().cubeValue != 6) {
                        logFirebaseEvent('Button_Gradient_update_app_state');
                        setState(() {
                          FFAppState().boardValue = FFAppState().cubeValue666;
                        });
                      }
                    }
                  }

                  if (FFAppState().boardValue == 67) {
                    logFirebaseEvent('Button_Gradient_update_app_state');
                    FFAppState().update(() {
                      FFAppState().cubeValue666 = 0;
                    });
                  }
                  logFirebaseEvent('Button_Gradient_bottom_sheet');
                  Navigator.pop(context);
                },
                child: wrapWithModel(
                  model: _model.buttonGradientModel,
                  updateCallback: () => setState(() {}),
                  child: ButtonGradientWidget(
                    text: 'Бросить кубик',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
