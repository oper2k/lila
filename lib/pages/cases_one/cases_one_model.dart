import '/backend/backend.dart';
import '/components/instagram/instagram_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CasesOneModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for instagram component.
  late InstagramModel instagramModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    instagramModel = createModel(context, () => InstagramModel());
  }

  void dispose() {
    unfocusNode.dispose();
    instagramModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
