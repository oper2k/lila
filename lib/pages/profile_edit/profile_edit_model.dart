import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/components/delete_account/delete_account_widget.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/main.dart';
import 'profile_edit_widget.dart' show ProfileEditWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileEditModel extends FlutterFlowModel<ProfileEditWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for NameInput widget.
  TextEditingController? nameInputController;
  String? Function(BuildContext, String?)? nameInputControllerValidator;
  String? _nameInputControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Введите Имя';
    }

    if (!RegExp(kTextValidatorUsernameRegex).hasMatch(val)) {
      return 'Must start with a letter and can only contain letters, digits and - or _.';
    }
    return null;
  }

  // State field(s) for FamilyInput widget.
  TextEditingController? familyInputController;
  String? Function(BuildContext, String?)? familyInputControllerValidator;
  DateTime? datePicked;
  // State field(s) for PhoneInput widget.
  TextEditingController? phoneInputController;
  String? Function(BuildContext, String?)? phoneInputControllerValidator;
  // State field(s) for GenderRadioButton widget.
  FormFieldController<String>? genderRadioButtonValueController;
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    nameInputControllerValidator = _nameInputControllerValidator;
    buttonExpModel = createModel(context, () => ButtonExpModel());
  }

  void dispose() {
    unfocusNode.dispose();
    nameInputController?.dispose();
    familyInputController?.dispose();
    phoneInputController?.dispose();
    buttonExpModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.

  String? get genderRadioButtonValue => genderRadioButtonValueController?.value;
}
