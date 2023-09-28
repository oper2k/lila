import '/backend/backend.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/components/end_game/end_game_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/main.dart';
import '/pages/history_moves/history_moves_widget.dart';
import '/pages/rules_game/rules_game_widget.dart';
import 'menu_game_widget.dart' show MenuGameWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuGameModel extends FlutterFlowModel<MenuGameWidget> {
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
