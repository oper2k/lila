import '/components/button_gradient/button_gradient_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/pages/history_game/history_game_widget.dart';
import 'sub_thank_you_widget.dart' show SubThankYouWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

class SubThankYouModel extends FlutterFlowModel<SubThankYouWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Button_Gradient component.
  late ButtonGradientModel buttonGradientModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    buttonGradientModel = createModel(context, () => ButtonGradientModel());
  }

  void dispose() {
    unfocusNode.dispose();
    buttonGradientModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
