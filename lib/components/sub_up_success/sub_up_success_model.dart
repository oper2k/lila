import '/components/button_exp/button_exp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SubUpSuccessModel extends FlutterFlowModel {
  ///  Local state fields for this component.

  bool subBool = false;

  ///  State fields for stateful widgets in this component.

  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonExpModel = createModel(context, () => ButtonExpModel());
  }

  void dispose() {
    buttonExpModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
