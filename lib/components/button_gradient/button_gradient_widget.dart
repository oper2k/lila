import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'button_gradient_model.dart';
export 'button_gradient_model.dart';

class ButtonGradientWidget extends StatefulWidget {
  const ButtonGradientWidget({
    Key? key,
    this.text,
  }) : super(key: key);

  final String? text;

  @override
  _ButtonGradientWidgetState createState() => _ButtonGradientWidgetState();
}

class _ButtonGradientWidgetState extends State<ButtonGradientWidget> {
  late ButtonGradientModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ButtonGradientModel());
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
                widget.text!,
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
            ),
          ),
        ),
        Container(
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
      ],
    );
  }
}
