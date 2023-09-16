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
import 'card_pay_model.dart';
export 'card_pay_model.dart';

class CardPayWidget extends StatefulWidget {
  const CardPayWidget({
    Key? key,
    required this.typeSubs,
    required this.amount,
    required this.descriptionSubs,
  }) : super(key: key);

  final int? typeSubs;
  final int? amount;
  final String? descriptionSubs;

  @override
  _CardPayWidgetState createState() => _CardPayWidgetState();
}

class _CardPayWidgetState extends State<CardPayWidget> {
  late CardPayModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CardPayModel());

    logFirebaseEvent('screen_view', parameters: {'screen_name': 'CardPay'});
    _model.numberController ??= TextEditingController();
    _model.dateController ??= TextEditingController();
    _model.cvvController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondary,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).secondary,
            automaticallyImplyLeading: false,
            leading: InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                logFirebaseEvent('CARD_PAY_PAGE_Container_4johmdud_ON_TAP');
                logFirebaseEvent('Container_navigate_back');
                Navigator.pop(context);
              },
              child: Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(0.00, 1.00),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Icon(
                      FFIcons.kleft,
                      color: FlutterFlowTheme.of(context).primaryText,
                      size: 16.0,
                    ),
                  ),
                ),
              ),
            ),
            actions: [],
            flexibleSpace: FlexibleSpaceBar(
              background: Align(
                alignment: AlignmentDirectional(0.00, -1.00),
                child: Image.asset(
                  'assets/images/StatusBar.png',
                  width: double.infinity,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            centerTitle: false,
            elevation: 0.0,
          ),
        ),
        body: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 45.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                () {
                  if (widget.typeSubs == 0) {
                    return 'Покупка одной игры';
                  } else if (widget.typeSubs == 1) {
                    return 'Бизлимит. 1 месяц';
                  } else {
                    return 'Безлимит.  3 месяца';
                  }
                }(),
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).displaySmallFamily,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).displaySmallFamily),
                      lineHeight: 1.2,
                    ),
              ),
              Text(
                widget.typeSubs == 0
                    ? 'Самый удобный тариф'
                    : 'Кому нужно больше!',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).headlineMediumFamily,
                      fontSize: 14.0,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).headlineMediumFamily),
                    ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Container(
                      width: double.infinity,
                      child: TextFormField(
                        controller: _model.numberController,
                        onChanged: (_) => EasyDebounce.debounce(
                          '_model.numberController',
                          Duration(milliseconds: 1000),
                          () => setState(() {}),
                        ),
                        obscureText: false,
                        decoration: InputDecoration(
                          labelText: 'Номер карты',
                          labelStyle: FlutterFlowTheme.of(context)
                              .titleMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .titleMediumFamily,
                                color: Colors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .titleMediumFamily),
                              ),
                          hintText: '1111 1111 1111 1111',
                          hintStyle: FlutterFlowTheme.of(context)
                              .bodySmall
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .bodySmallFamily,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .bodySmallFamily),
                              ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x33FFFFFF),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x7FFFFFFF),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          errorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedErrorBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0x00000000),
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          filled: true,
                          fillColor: Color(0x1AFFFFFF),
                          contentPadding: EdgeInsetsDirectional.fromSTEB(
                              20.0, 20.0, 20.0, 20.0),
                        ),
                        style:
                            FlutterFlowTheme.of(context).titleMedium.override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .titleMediumFamily,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  useGoogleFonts: GoogleFonts.asMap()
                                      .containsKey(FlutterFlowTheme.of(context)
                                          .titleMediumFamily),
                                ),
                        keyboardType: TextInputType.number,
                        validator: _model.numberControllerValidator
                            .asValidator(context),
                        inputFormatters: [_model.numberMask],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 16.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.dateController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.dateController',
                                  Duration(milliseconds: 1000),
                                  () => setState(() {}),
                                ),
                                obscureText: false,
                                decoration: InputDecoration(
                                  labelText: 'Срок',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                  hintText: '12/24',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x33FFFFFF),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x7FFFFFFF),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0x1AFFFFFF),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily),
                                    ),
                                keyboardType: TextInputType.number,
                                validator: _model.dateControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.dateMask],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: Container(
                              width: double.infinity,
                              child: TextFormField(
                                controller: _model.cvvController,
                                onChanged: (_) => EasyDebounce.debounce(
                                  '_model.cvvController',
                                  Duration(milliseconds: 1000),
                                  () => setState(() {}),
                                ),
                                obscureText: !_model.cvvVisibility,
                                decoration: InputDecoration(
                                  labelText: 'CVV',
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .titleMediumFamily,
                                        color: Colors.white,
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.w500,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .titleMediumFamily),
                                      ),
                                  hintText: '***',
                                  hintStyle: FlutterFlowTheme.of(context)
                                      .bodySmall
                                      .override(
                                        fontFamily: FlutterFlowTheme.of(context)
                                            .bodySmallFamily,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 16.0,
                                        fontWeight: FontWeight.w600,
                                        useGoogleFonts: GoogleFonts.asMap()
                                            .containsKey(
                                                FlutterFlowTheme.of(context)
                                                    .bodySmallFamily),
                                      ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x33FFFFFF),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x7FFFFFFF),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  errorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0x00000000),
                                      width: 1.0,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                  filled: true,
                                  fillColor: Color(0x1AFFFFFF),
                                  contentPadding:
                                      EdgeInsetsDirectional.fromSTEB(
                                          20.0, 20.0, 20.0, 20.0),
                                  suffixIcon: InkWell(
                                    onTap: () => setState(
                                      () => _model.cvvVisibility =
                                          !_model.cvvVisibility,
                                    ),
                                    focusNode: FocusNode(skipTraversal: true),
                                    child: Icon(
                                      _model.cvvVisibility
                                          ? Icons.visibility_outlined
                                          : Icons.visibility_off_outlined,
                                      color: Color(0xFF757575),
                                      size: 0.0,
                                    ),
                                  ),
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: FlutterFlowTheme.of(context)
                                          .titleMediumFamily,
                                      color: Colors.white,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      useGoogleFonts: GoogleFonts.asMap()
                                          .containsKey(
                                              FlutterFlowTheme.of(context)
                                                  .titleMediumFamily),
                                    ),
                                keyboardType: TextInputType.number,
                                validator: _model.cvvControllerValidator
                                    .asValidator(context),
                                inputFormatters: [_model.cvvMask],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  logFirebaseEvent('CARD_PAY_PAGE_Container_8z4h69yg_ON_TAP');
                  var _shouldSetState = false;
                  logFirebaseEvent('Button_Exp_custom_action');
                  _model.validateCartNumber = await actions.validateCardNumber(
                    _model.numberController.text,
                  );
                  _shouldSetState = true;
                  if (_model.validateCartNumber!) {
                    logFirebaseEvent('Button_Exp_custom_action');
                    _model.validateCardDate =
                        await actions.validateCardExpireDate(
                      _model.dateController.text,
                    );
                    _shouldSetState = true;
                    if (_model.validateCardDate!) {
                      logFirebaseEvent('Button_Exp_custom_action');
                      _model.cryptogramCard = await actions
                          .returnStringCardCryptogramForCloudpayments(
                        _model.numberController.text,
                        _model.dateController.text,
                        _model.cvvController.text,
                        FFAppState().publicID,
                      );
                      _shouldSetState = true;
                      logFirebaseEvent('Button_Exp_backend_call');
                      _model.apiResult2li =
                          await CloudpaymentsGroup.payByCardCopyCall.call(
                        publicId: FFAppState().publicID,
                        amount: widget.amount,
                        cardCryptogramPacket: _model.cryptogramCard,
                        email: currentUserEmail,
                        accountId: currentUserEmail,
                      );
                      _shouldSetState = true;
                      if ((_model.apiResult2li?.succeeded ?? true)) {
                        if (CloudpaymentsGroup.payByCardCopyCall.isSuccess(
                          (_model.apiResult2li?.jsonBody ?? ''),
                        )) {
                          logFirebaseEvent('Button_Exp_backend_call');

                          await currentUserReference!
                              .update(createUsersRecordData(
                            buyGame: true,
                          ));
                          logFirebaseEvent('Button_Exp_show_snack_bar');
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                CloudpaymentsGroup.payByCardCopyCall
                                    .successMessage(
                                      (_model.apiResult2li?.jsonBody ?? ''),
                                    )
                                    .toString(),
                                style: GoogleFonts.getFont(
                                  'Inter',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                              ),
                              duration: Duration(milliseconds: 4000),
                              backgroundColor:
                                  FlutterFlowTheme.of(context).tertiary,
                            ),
                          );
                          if (widget.typeSubs != 0) {
                            logFirebaseEvent('Button_Exp_backend_call');
                            _model.createSub = await CloudpaymentsGroup
                                .createSubscriptionCall
                                .call(
                              interval: widget.typeSubs?.toString(),
                              accountId: currentUserEmail,
                              description: widget.descriptionSubs,
                              email: currentUserEmail,
                              amount: widget.amount?.toDouble(),
                              publicId: FFAppState().publicID,
                              startDate: dateTimeFormat(
                                'yyyy-MM-dd',
                                getCurrentTimestamp,
                                locale:
                                    FFLocalizations.of(context).languageCode,
                              ),
                              period: widget.typeSubs,
                            );
                            _shouldSetState = true;
                            logFirebaseEvent('Button_Exp_backend_call');

                            await currentUserReference!
                                .update(createUsersRecordData(
                              modelId: CloudpaymentsGroup.createSubscriptionCall
                                  .modelId(
                                    (_model.createSub?.jsonBody ?? ''),
                                  )
                                  .toString(),
                            ));
                          }
                          logFirebaseEvent('Button_Exp_navigate_to');
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => SubThankYouWidget(),
                            ),
                            (r) => false,
                          );
                        } else {
                          if (CloudpaymentsGroup.payByCardCopyCall.reasonCode(
                                (_model.apiResult2li?.jsonBody ?? ''),
                              ) !=
                              null) {
                            logFirebaseEvent('Button_Exp_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Что-то пошло не так 2: ${CloudpaymentsGroup.payByCardCopyCall.reasonCode(
                                        (_model.apiResult2li?.jsonBody ?? ''),
                                      ).toString()}',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                            );
                            if (_shouldSetState) setState(() {});
                            return;
                          }
                          if (CloudpaymentsGroup.payByCardCopyCall
                                      .urlForConfirm(
                                        (_model.apiResult2li?.jsonBody ?? ''),
                                      )
                                      .toString() !=
                                  null &&
                              CloudpaymentsGroup.payByCardCopyCall
                                      .urlForConfirm(
                                        (_model.apiResult2li?.jsonBody ?? ''),
                                      )
                                      .toString() !=
                                  '') {
                            logFirebaseEvent('Button_Exp_custom_action');
                            _model.check3DS =
                                await actions.check3DSCloudPayments(
                              CloudpaymentsGroup.payByCardCopyCall
                                  .urlForConfirm(
                                    (_model.apiResult2li?.jsonBody ?? ''),
                                  )
                                  .toString(),
                              CloudpaymentsGroup.payByCardCopyCall
                                  .transactionId(
                                    (_model.apiResult2li?.jsonBody ?? ''),
                                  )
                                  .toString(),
                              CloudpaymentsGroup.payByCardCopyCall
                                  .paReq(
                                    (_model.apiResult2li?.jsonBody ?? ''),
                                  )
                                  .toString(),
                            );
                            _shouldSetState = true;
                            if (_model.check3DS!.length > 0) {
                              logFirebaseEvent('Button_Exp_backend_call');
                              _model.apiResult5ny =
                                  await CloudpaymentsGroup.checkDSCopyCall.call(
                                transactionId:
                                    int.parse(_model.check3DS!.first),
                                paRes: _model.check3DS?.last,
                              );
                              _shouldSetState = true;
                              if ((_model.apiResult5ny?.succeeded ?? true)) {
                                if (CloudpaymentsGroup.checkDSCopyCall
                                    .isSuccess(
                                  (_model.apiResult5ny?.jsonBody ?? ''),
                                )) {
                                  logFirebaseEvent('Button_Exp_backend_call');

                                  await currentUserReference!
                                      .update(createUsersRecordData(
                                    buyGame: true,
                                  ));
                                  logFirebaseEvent('Button_Exp_show_snack_bar');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        CloudpaymentsGroup.checkDSCopyCall
                                            .message(
                                              (_model.apiResult5ny?.jsonBody ??
                                                  ''),
                                            )
                                            .toString(),
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  );
                                  if (widget.typeSubs != 0) {
                                    logFirebaseEvent('Button_Exp_backend_call');
                                    _model.modelId = await CloudpaymentsGroup
                                        .createSubscriptionCall
                                        .call(
                                      interval: widget.typeSubs?.toString(),
                                      accountId: currentUserEmail,
                                      description: widget.descriptionSubs,
                                      email: currentUserEmail,
                                      amount: widget.amount?.toDouble(),
                                      publicId: FFAppState().publicID,
                                      startDate: dateTimeFormat(
                                        'yyyy-MM-dd',
                                        getCurrentTimestamp,
                                        locale: FFLocalizations.of(context)
                                            .languageCode,
                                      ),
                                      period: widget.typeSubs,
                                      token: CloudpaymentsGroup
                                          .payByCardCopyCall
                                          .token(
                                            (_model.apiResult2li?.jsonBody ??
                                                ''),
                                          )
                                          .toString(),
                                    );
                                    _shouldSetState = true;
                                    logFirebaseEvent('Button_Exp_backend_call');

                                    await currentUserReference!
                                        .update(createUsersRecordData(
                                      modelId: CloudpaymentsGroup
                                          .createSubscriptionCall
                                          .modelId(
                                            (_model.modelId?.jsonBody ?? ''),
                                          )
                                          .toString(),
                                    ));
                                  }
                                  logFirebaseEvent('Button_Exp_navigate_to');
                                  Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => SubThankYouWidget(),
                                    ),
                                    (r) => false,
                                  );
                                } else {
                                  logFirebaseEvent('Button_Exp_show_snack_bar');
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Что-то пошло не так 5: ${CloudpaymentsGroup.checkDSCopyCall.message(
                                              (_model.apiResult5ny?.jsonBody ??
                                                  ''),
                                            ).toString()}',
                                        style: GoogleFonts.getFont(
                                          'Inter',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                        ),
                                      ),
                                      duration: Duration(milliseconds: 4000),
                                      backgroundColor:
                                          FlutterFlowTheme.of(context).tertiary,
                                    ),
                                  );
                                }
                              } else {
                                logFirebaseEvent('Button_Exp_show_snack_bar');
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'Что-то пошло не так 4: ${(_model.apiResult5ny?.statusCode ?? 200).toString()}',
                                      style: GoogleFonts.getFont(
                                        'Inter',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                    ),
                                    duration: Duration(milliseconds: 4000),
                                    backgroundColor:
                                        FlutterFlowTheme.of(context).tertiary,
                                  ),
                                );
                              }
                            } else {
                              logFirebaseEvent('Button_Exp_show_snack_bar');
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(
                                    'Ошибка 3DS',
                                    style: GoogleFonts.getFont(
                                      'Inter',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                  ),
                                  duration: Duration(milliseconds: 4000),
                                  backgroundColor:
                                      FlutterFlowTheme.of(context).tertiary,
                                ),
                              );
                            }
                          } else {
                            logFirebaseEvent('Button_Exp_show_snack_bar');
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Что-то пошло не так 3: ${CloudpaymentsGroup.payByCardCopyCall.message(
                                        (_model.apiResult2li?.jsonBody ?? ''),
                                      ).toString()}',
                                  style: GoogleFonts.getFont(
                                    'Inter',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryText,
                                  ),
                                ),
                                duration: Duration(milliseconds: 4000),
                                backgroundColor:
                                    FlutterFlowTheme.of(context).tertiary,
                              ),
                            );
                          }
                        }
                      } else {
                        logFirebaseEvent('Button_Exp_show_snack_bar');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Что-то пошло не так 1: ${(_model.apiResult2li?.statusCode ?? 200).toString()}',
                              style: GoogleFonts.getFont(
                                'Inter',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                            ),
                            duration: Duration(milliseconds: 4000),
                            backgroundColor:
                                FlutterFlowTheme.of(context).tertiary,
                          ),
                        );
                      }
                    } else {
                      logFirebaseEvent('Button_Exp_show_snack_bar');
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            'Срок карты введен неверно',
                            style: GoogleFonts.getFont(
                              'Inter',
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                          duration: Duration(milliseconds: 4000),
                          backgroundColor:
                              FlutterFlowTheme.of(context).tertiary,
                        ),
                      );
                      if (_shouldSetState) setState(() {});
                      return;
                    }
                  } else {
                    logFirebaseEvent('Button_Exp_show_snack_bar');
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'Номер карты введён неверно',
                          style: GoogleFonts.getFont(
                            'Inter',
                            color: FlutterFlowTheme.of(context).primaryText,
                          ),
                        ),
                        duration: Duration(milliseconds: 4000),
                        backgroundColor: FlutterFlowTheme.of(context).tertiary,
                      ),
                    );
                    if (_shouldSetState) setState(() {});
                    return;
                  }

                  if (_shouldSetState) setState(() {});
                },
                child: wrapWithModel(
                  model: _model.buttonExpModel,
                  updateCallback: () => setState(() {}),
                  child: ButtonExpWidget(
                    text: 'Оплатить',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
