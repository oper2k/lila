import '/backend/backend.dart';
import '/components/button_gradient/button_gradient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/question_game/question_game_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AffirmationsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Button_Gradient component.
  late ButtonGradientModel buttonGradientModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonGradientModel = createModel(context, () => ButtonGradientModel());
  }

  void dispose() {
    unfocusNode.dispose();
    buttonGradientModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
