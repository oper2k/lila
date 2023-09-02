import '/backend/backend.dart';
import '/components/one_review/one_review_widget.dart';
import '/components/review_video/review_video_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ReviewsModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Models for oneReview dynamic component.
  late FlutterFlowDynamicModels<OneReviewModel> oneReviewModels;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    oneReviewModels = FlutterFlowDynamicModels(() => OneReviewModel());
  }

  void dispose() {
    unfocusNode.dispose();
    oneReviewModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
