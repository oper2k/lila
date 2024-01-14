import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/log_out/log_out_widget.dart';
import '/components/sub_up_success/sub_up_success_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/about/about_widget.dart';
import '/pages/history_game/history_game_widget.dart';
import '/pages/profile_edit/profile_edit_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'profile_widget.dart' show ProfileWidget;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Subscription)] action in Container widget.
  ApiCallResponse? getSubscribeCloudGame1;
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
