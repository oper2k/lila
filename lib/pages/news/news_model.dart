import '/backend/backend.dart';
import '/components/instagram/instagram_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'news_widget.dart' show NewsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NewsModel extends FlutterFlowModel<NewsWidget> {
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
