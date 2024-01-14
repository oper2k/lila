import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import 'registration_name_widget.dart' show RegistrationNameWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationNameModel extends FlutterFlowModel<RegistrationNameWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NameInput widget.
  FocusNode? nameInputFocusNode;
  TextEditingController? nameInputController;
  String? Function(BuildContext, String?)? nameInputControllerValidator;
  String? _nameInputControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Введите Имя';
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for PhoneInput widget.
  FocusNode? phoneInputFocusNode;
  TextEditingController? phoneInputController;
  String? Function(BuildContext, String?)? phoneInputControllerValidator;
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameInputControllerValidator = _nameInputControllerValidator;
    buttonExpModel = createModel(context, () => ButtonExpModel());
  }

  void dispose() {
    unfocusNode.dispose();
    nameInputFocusNode?.dispose();
    nameInputController?.dispose();

    phoneInputFocusNode?.dispose();
    phoneInputController?.dispose();

    buttonExpModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
