import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/button_gradient/button_gradient_widget.dart';
import '/components/button_star_game/button_star_game_widget.dart';
import '/components/empty/empty_widget.dart';
import '/components/sub_up_success/sub_up_success_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/field_game/field_game_widget.dart';
import '/pages/history_game/history_game_widget.dart';
import '/pages/history_moves/history_moves_widget.dart';
import '/pages/meditation/meditation_widget.dart';
import '/pages/rules_game/rules_game_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/flutter_flow/random_data_util.dart' as random_data;
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'home_game_widget.dart' show HomeGameWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeGameModel extends FlutterFlowModel<HomeGameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Subscription)] action in Container widget.
  ApiCallResponse? getSubscribeCloudGame;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
