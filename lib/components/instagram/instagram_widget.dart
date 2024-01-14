import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'instagram_model.dart';
export 'instagram_model.dart';

class InstagramWidget extends StatefulWidget {
  const InstagramWidget({Key? key}) : super(key: key);

  @override
  _InstagramWidgetState createState() => _InstagramWidgetState();
}

class _InstagramWidgetState extends State<InstagramWidget> {
  late InstagramModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InstagramModel());
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
      height: 80.0,
      decoration: BoxDecoration(
        color: Color(0xFF7D6CEE),
        image: DecorationImage(
          fit: BoxFit.contain,
          image: Image.asset(
            'assets/images/Advertising.png',
          ).image,
        ),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 12.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ещё больше интересного\nв моём Инстаграм',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyMediumFamily,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyMediumFamily),
                      ),
                ),
              ],
            ),
            Container(
              width: 64.0,
              height: 64.0,
              decoration: BoxDecoration(
                color: Color(0xFF9789F1),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Image.asset(
                  'assets/images/ins.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
