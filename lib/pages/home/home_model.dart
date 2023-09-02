import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/button_home_game/button_home_game_widget.dart';
import '/components/continue_game/continue_game_widget.dart';
import '/components/empty/empty_widget.dart';
import '/components/review_video/review_video_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/pages/affirmations/affirmations_widget.dart';
import '/pages/cases/cases_widget.dart';
import '/pages/cases_one/cases_one_widget.dart';
import '/pages/field_game/field_game_widget.dart';
import '/pages/news/news_widget.dart';
import '/pages/player/player_widget.dart';
import '/pages/reviews/reviews_widget.dart';
import '/pages/sub_pay/sub_pay_widget.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:aligned_dialog/aligned_dialog.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Stores action output result for [Action Block - CheckSubs] action in Container widget.
  bool? checkSubs;
  // Stores action output result for [Action Block - CheckSubs] action in Container widget.
  bool? checkSubs5;
  // Stores action output result for [Action Block - CheckSubs] action in Container widget.
  bool? checkSubs4;
  // Stores action output result for [Action Block - CheckSubs] action in Container widget.
  bool? checkSubs3;
  // Stores action output result for [Action Block - CheckSubs] action in Container widget.
  bool? checkSubs2;
  // Stores action output result for [Action Block - CheckSubs] action in Container widget.
  bool? checkSubs1;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
