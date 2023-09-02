import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/field_game/field_game_widget.dart';
import '/pages/question_game/question_game_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class CubeGameModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel1;
  // Stores action output result for [Action Block - CheckSubs] action in Button_Exp widget.
  bool? checkSubs;
  // Stores action output result for [Backend Call - Create Document] action in Button_Exp widget.
  GamesRecord? newGame;
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonExpModel1 = createModel(context, () => ButtonExpModel());
    buttonExpModel2 = createModel(context, () => ButtonExpModel());
  }

  void dispose() {
    unfocusNode.dispose();
    buttonExpModel1.dispose();
    buttonExpModel2.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
