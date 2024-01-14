import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/question_game/question_game_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/pages/sub_thank_you/sub_thank_you_widget.dart';
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'subscription_bar_copy_widget.dart' show SubscriptionBarCopyWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubscriptionBarCopyModel
    extends FlutterFlowModel<SubscriptionBarCopyWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [RevenueCat - Purchase] action in Container widget.
  bool? revenuePurchOneGame;
  // Stores action output result for [RevenueCat - Purchase] action in Container widget.
  bool? revenuePurch;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
