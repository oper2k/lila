import '/components/question/question_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/cube_game/cube_game_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class QuestionGameModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for QuestionInput widget.
  TextEditingController? questionInputController;
  String? Function(BuildContext, String?)? questionInputControllerValidator;
  String? _questionInputControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Сформулируйте свой запрос';
    }

    if (val.length < 3) {
      return 'Это короткий запрос, напишите больше';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    questionInputControllerValidator = _questionInputControllerValidator;
  }

  void dispose() {
    unfocusNode.dispose();
    questionInputController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
