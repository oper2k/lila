import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/components/cube_6/cube6_widget.dart';
import '/components/game666/game666_widget.dart';
import '/components/game_end_move/game_end_move_widget.dart';
import '/components/game_one_move/game_one_move_widget.dart';
import '/components/menu_game/menu_game_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/end_game_dage/end_game_dage_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'field_game_widget.dart' show FieldGameWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class FieldGameModel extends FlutterFlowModel<FieldGameWidget> {
  ///  Local state fields for this page.

  bool game666 = false;

  bool stopCard = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Get Subscription)] action in Stack widget.
  ApiCallResponse? getSubscribeCloudGame;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for input_insite_game widget.
  FocusNode? inputInsiteGameFocusNode;
  TextEditingController? inputInsiteGameController;
  String? Function(BuildContext, String?)? inputInsiteGameControllerValidator;
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonExpModel = createModel(context, () => ButtonExpModel());
  }

  void dispose() {
    unfocusNode.dispose();
    expandableController.dispose();
    inputInsiteGameFocusNode?.dispose();
    inputInsiteGameController?.dispose();

    buttonExpModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
