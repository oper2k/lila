import '/components/button_gradient/button_gradient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cube6_widget.dart' show Cube6Widget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Cube6Model extends FlutterFlowModel<Cube6Widget> {
  ///  State fields for stateful widgets in this component.

  // Model for Button_Gradient component.
  late ButtonGradientModel buttonGradientModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonGradientModel = createModel(context, () => ButtonGradientModel());
  }

  void dispose() {
    buttonGradientModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
