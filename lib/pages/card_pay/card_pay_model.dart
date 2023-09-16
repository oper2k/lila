import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/pages/sub_thank_you/sub_thank_you_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class CardPayModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Number widget.
  TextEditingController? numberController;
  final numberMask = MaskTextInputFormatter(mask: '#### #### #### ####');
  String? Function(BuildContext, String?)? numberControllerValidator;
  // State field(s) for Date widget.
  TextEditingController? dateController;
  final dateMask = MaskTextInputFormatter(mask: '##/##');
  String? Function(BuildContext, String?)? dateControllerValidator;
  // State field(s) for CVV widget.
  TextEditingController? cvvController;
  late bool cvvVisibility;
  final cvvMask = MaskTextInputFormatter(mask: '###');
  String? Function(BuildContext, String?)? cvvControllerValidator;
  // Model for Button_Exp component.
  late ButtonExpModel buttonExpModel;
  // Stores action output result for [Custom Action - validateCardNumber] action in Button_Exp widget.
  bool? validateCartNumber;
  // Stores action output result for [Custom Action - validateCardExpireDate] action in Button_Exp widget.
  bool? validateCardDate;
  // Stores action output result for [Custom Action - returnStringCardCryptogramForCloudpayments] action in Button_Exp widget.
  String? cryptogramCard;
  // Stores action output result for [Backend Call - API (Pay by card Copy)] action in Button_Exp widget.
  ApiCallResponse? apiResult2li;
  // Stores action output result for [Backend Call - API (Create Subscription)] action in Button_Exp widget.
  ApiCallResponse? createSub;
  // Stores action output result for [Custom Action - check3DSCloudPayments] action in Button_Exp widget.
  List<String>? check3DS;
  // Stores action output result for [Backend Call - API (CheckDS Copy)] action in Button_Exp widget.
  ApiCallResponse? apiResult5ny;
  // Stores action output result for [Backend Call - API (Create Subscription)] action in Button_Exp widget.
  ApiCallResponse? modelId;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    cvvVisibility = false;
    buttonExpModel = createModel(context, () => ButtonExpModel());
  }

  void dispose() {
    unfocusNode.dispose();
    numberController?.dispose();
    dateController?.dispose();
    cvvController?.dispose();
    buttonExpModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
