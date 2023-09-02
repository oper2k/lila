import '/auth/firebase_auth/auth_util.dart';
import '/components/log_out/log_out_widget.dart';
import '/components/sub_up_success/sub_up_success_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/about/about_widget.dart';
import '/pages/history_game/history_game_widget.dart';
import '/pages/profile_edit/profile_edit_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Action Block - CheckSubs] action in Container widget.
  bool? checkSubs;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
