import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_gradient/button_gradient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/field_game/field_game_widget.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContinueGameModel extends FlutterFlowModel {
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
