import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_gradient/button_gradient_widget.dart';
import '/components/button_star_game/button_star_game_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/field_game/field_game_widget.dart';
import 'rules_game_widget.dart' show RulesGameWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RulesGameModel extends FlutterFlowModel<RulesGameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Create Document] action in Button_Gradient widget.
  GamesRecord? newGame;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
