import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'one_review_model.dart';
export 'one_review_model.dart';

class OneReviewWidget extends StatefulWidget {
  const OneReviewWidget({
    Key? key,
    required this.currentReview,
  }) : super(key: key);

  final ReviewsRecord? currentReview;

  @override
  _OneReviewWidgetState createState() => _OneReviewWidgetState();
}

class _OneReviewWidgetState extends State<OneReviewWidget> {
  late OneReviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OneReviewModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: Image.network(
              widget.currentReview!.image,
            ).image,
          ),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 1.0),
          child: Container(
            width: double.infinity,
            height: 50.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0x00202141), Color(0xCB202141)],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 21.0),
              child: Text(
                valueOrDefault<String>(
                  widget.currentReview?.name,
                  'Имя',
                ),
                maxLines: 1,
                style: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                      letterSpacing: 1.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts: GoogleFonts.asMap().containsKey(
                          FlutterFlowTheme.of(context).bodyLargeFamily),
                      lineHeight: 2.3,
                    ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
