import '/auth/firebase_auth/auth_util.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/main.dart';
import '/pages/forgot_password/forgot_password_widget.dart';
import '/pages/registration_name/registration_name_widget.dart';
import '/pages/welcome/welcome_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RegistrationEmailModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  TextEditingController? emailAddressController;
  String? Function(BuildContext, String?)? emailAddressControllerValidator;
  String? _emailAddressControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Нужно ввести Email';
    }

    return null;
  }

  // State field(s) for password widget.
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel1;
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel2;
  // State field(s) for email widget.
  TextEditingController? emailController;
  String? Function(BuildContext, String?)? emailControllerValidator;
  String? _emailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Нужно ввести email ';
    }

    return null;
  }

  // State field(s) for password_1 widget.
  TextEditingController? password1Controller;
  late bool password1Visibility;
  String? Function(BuildContext, String?)? password1ControllerValidator;
  String? _password1ControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Введите пароль';
    }

    if (val.length < 6) {
      return 'Пароль должен быть от 6 символов';
    }

    return null;
  }

  // State field(s) for password_2 widget.
  TextEditingController? password2Controller;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2ControllerValidator;
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    emailAddressControllerValidator = _emailAddressControllerValidator;
    passwordVisibility = false;
    buttonExpModel1 = createModel(context, () => ButtonExpModel());
    buttonExpModel2 = createModel(context, () => ButtonExpModel());
    emailControllerValidator = _emailControllerValidator;
    password1Visibility = false;
    password1ControllerValidator = _password1ControllerValidator;
    password2Visibility = false;
    buttonExpModel3 = createModel(context, () => ButtonExpModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    emailAddressController?.dispose();
    passwordController?.dispose();
    buttonExpModel1.dispose();
    buttonExpModel2.dispose();
    emailController?.dispose();
    password1Controller?.dispose();
    password2Controller?.dispose();
    buttonExpModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
