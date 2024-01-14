import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/cube_game/cube_game_widget.dart';
import '/pages/field_game/field_game_widget.dart';
import '/pages/sub_thank_you/sub_thank_you_widget.dart';
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'sub_revenu_widget.dart' show SubRevenuWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubRevenuModel extends FlutterFlowModel<SubRevenuWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [RevenueCat - Purchase] action in Container widget.
  bool? revenuePurchOneGame;
  // Stores action output result for [RevenueCat - Purchase] action in Container widget.
  bool? revenuePurch;
  // Stores action output result for [Backend Call - Create Document] action in Text widget.
  GamesRecord? newGame;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
