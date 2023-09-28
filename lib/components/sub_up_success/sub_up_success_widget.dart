import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/button_exp/button_exp_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'sub_up_success_model.dart';
export 'sub_up_success_model.dart';

class SubUpSuccessWidget extends StatefulWidget {
  const SubUpSuccessWidget({Key? key}) : super(key: key);

  @override
  _SubUpSuccessWidgetState createState() => _SubUpSuccessWidgetState();
}

class _SubUpSuccessWidgetState extends State<SubUpSuccessWidget> {
  late SubUpSuccessModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubUpSuccessModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      logFirebaseEvent('SUB_UP_SUCCESS_SubUpSuccess_ON_INIT_STAT');
      logFirebaseEvent('SubUpSuccess_backend_call');
      _model.getSubscribeCloudGame =
          await CloudpaymentsGroup.getSubscriptionCall.call(
        id: valueOrDefault(currentUserDocument?.modelId, ''),
      );
      if (CloudpaymentsGroup.getSubscriptionCall
              .modelStatus(
                (_model.getSubscribeCloudGame?.jsonBody ?? ''),
              )
              .toString() ==
          'Active') {
        logFirebaseEvent('SubUpSuccess_update_component_state');
        setState(() {
          _model.subBool = true;
        });
      } else {
        logFirebaseEvent('SubUpSuccess_update_component_state');
        setState(() {
          _model.subBool = false;
        });
      }
    });
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).tertiary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(24.0),
          topRight: Radius.circular(24.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(24.0, 8.0, 24.0, 45.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: 48.0,
              height: 4.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).colorIcon1,
                borderRadius: BorderRadius.circular(10.0),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
              child: Icon(
                FFIcons.kcheck,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 50.0,
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 28.0, 0.0, 0.0),
              child: Text(
                'Подписка активная',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall,
              ),
            ),
            if (!_model.subBool)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: Text(
                  'Управлять подписками можно в настройках телефона',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).headlineMediumFamily,
                        fontSize: 14.0,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).headlineMediumFamily),
                        lineHeight: 1.4,
                      ),
                ),
              ),
            if (_model.subBool)
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('SUB_UP_SUCCESS_RichText_a7dnqf0j_ON_TAP');
                    logFirebaseEvent('RichText_launch_u_r_l');
                    await launchURL('https://my.cloudpayments.ru/');
                  },
                  child: RichText(
                    textScaleFactor: MediaQuery.of(context).textScaleFactor,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Чтобы отменить подписку зайдите на сайт \n',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: FlutterFlowTheme.of(context)
                                    .headlineMediumFamily,
                                fontSize: 14.0,
                                useGoogleFonts: GoogleFonts.asMap().containsKey(
                                    FlutterFlowTheme.of(context)
                                        .headlineMediumFamily),
                              ),
                        ),
                        TextSpan(
                          text: 'https://my.cloudpayments.ru',
                          style: TextStyle(
                            fontSize: 14.0,
                            decoration: TextDecoration.underline,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            Align(
              alignment: AlignmentDirectional(0.00, 1.00),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 52.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent(
                        'SUB_UP_SUCCESS_Container_n2n23yxy_ON_TAP');
                    logFirebaseEvent('Button_Exp_bottom_sheet');
                    Navigator.pop(context);
                  },
                  child: wrapWithModel(
                    model: _model.buttonExpModel,
                    updateCallback: () => setState(() {}),
                    child: ButtonExpWidget(
                      text: 'Понятно',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
