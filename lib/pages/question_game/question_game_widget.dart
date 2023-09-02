import '/components/question/question_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/cube_game/cube_game_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'question_game_model.dart';
export 'question_game_model.dart';

class QuestionGameWidget extends StatefulWidget {
  const QuestionGameWidget({Key? key}) : super(key: key);

  @override
  _QuestionGameWidgetState createState() => _QuestionGameWidgetState();
}

class _QuestionGameWidgetState extends State<QuestionGameWidget> {
  late QuestionGameModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuestionGameModel());

    logFirebaseEvent('screen_view',
        parameters: {'screen_name': 'Question_Game'});
    _model.questionInputController ??= TextEditingController();
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
                logFirebaseEvent('QUESTION_GAME_Container_u4hpxod2_ON_TAP');
                logFirebaseEvent('Container_navigate_back');
                Navigator.pop(context);
              },
              child: Container(
                decoration: BoxDecoration(),
                child: Align(
                  alignment: AlignmentDirectional(0.0, 1.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                    child: Icon(
                      FFIcons.kclose2,
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
                alignment: AlignmentDirectional(0.0, -1.0),
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
          padding: EdgeInsetsDirectional.fromSTEB(24.0, 30.0, 24.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Сформулируйте свой запрос',
                style: FlutterFlowTheme.of(context).displaySmall.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).displaySmallFamily,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).displaySmallFamily),
                      lineHeight: 1.2,
                    ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
                child: Text(
                  'Напиши его, чтобы начать игру. Если при первом ходе выпадет НЕ 6 переформулируй его или введи другой.\nЕсли не уверена, что правильно поняла правила — вернись назад',
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
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: Form(
                  key: _model.formKey,
                  autovalidateMode: AutovalidateMode.disabled,
                  child: TextFormField(
                    controller: _model.questionInputController,
                    onChanged: (_) => EasyDebounce.debounce(
                      '_model.questionInputController',
                      Duration(milliseconds: 100),
                      () => setState(() {}),
                    ),
                    autofocus: true,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Твой запрос',
                      hintStyle: FlutterFlowTheme.of(context).headlineMedium,
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).border,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
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
                      fillColor: FlutterFlowTheme.of(context).tertiary,
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium,
                    maxLines: 4,
                    validator: _model.questionInputControllerValidator
                        .asValidator(context),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('QUESTION_GAME_PAGE_Text_ywg0qxnm_ON_TAP');
                    logFirebaseEvent('Text_bottom_sheet');
                    await showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      barrierColor: Color(0x00000000),
                      context: context,
                      builder: (context) {
                        return GestureDetector(
                          onTap: () => FocusScope.of(context)
                              .requestFocus(_model.unfocusNode),
                          child: Padding(
                            padding: MediaQuery.viewInsetsOf(context),
                            child: QuestionWidget(),
                          ),
                        );
                      },
                    ).then((value) => setState(() {}));
                  },
                  child: Text(
                    'Как сформулировать запрос?',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).bodyMediumFamily,
                          color: FlutterFlowTheme.of(context).urlText,
                          fontSize: 14.0,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).bodyMediumFamily),
                        ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 37.0, 0.0, 0.0),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    logFirebaseEvent('QUESTION_GAME_Container_027cxt6w_ON_TAP');
                    logFirebaseEvent('Container_validate_form');
                    if (_model.formKey.currentState == null ||
                        !_model.formKey.currentState!.validate()) {
                      return;
                    }
                    if (functions
                        .subLength(_model.questionInputController.text)) {
                      return;
                    }

                    logFirebaseEvent('Container_update_app_state');
                    FFAppState().update(() {
                      FFAppState().cubeValue = 7;
                    });
                    logFirebaseEvent('Container_navigate_to');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CubeGameWidget(
                          currentRequest: _model.questionInputController.text,
                        ),
                      ),
                    );
                    return;
                  },
                  child: Container(
                    width: double.infinity,
                    height: 48.0,
                    decoration: BoxDecoration(
                      color: functions
                              .subLength(_model.questionInputController.text)
                          ? Color(0xFF4D4D67)
                          : FlutterFlowTheme.of(context).colorButton,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Бросить кубик',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily:
                                  FlutterFlowTheme.of(context).bodyMediumFamily,
                              color: functions.subLength(
                                      _model.questionInputController.text)
                                  ? Color(0xFF9197AE)
                                  : FlutterFlowTheme.of(context).primaryText,
                              fontWeight: FontWeight.w600,
                              useGoogleFonts: GoogleFonts.asMap().containsKey(
                                  FlutterFlowTheme.of(context)
                                      .bodyMediumFamily),
                            ),
                      ),
                    ),
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
