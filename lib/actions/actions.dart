import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/revenue_cat_util.dart' as revenue_cat;
import 'package:flutter/material.dart';

Future<bool> checkSubs(BuildContext context) async {
  ApiCallResponse? modelId;
  ApiCallResponse? getSubscribeCloudGame;

  logFirebaseEvent('CheckSubs_revenue_cat');
  final isEntitled = await revenue_cat.isEntitled('issubscribe');
  if (isEntitled == null) {
    return;
  } else if (!isEntitled) {
    await revenue_cat.loadOfferings();
  }

  if (isEntitled) {
    return true;
  }

  logFirebaseEvent('CheckSubs_backend_call');
  modelId = await CloudpaymentsGroup.createSubscriptionCall.call(
    accountId: currentUserEmail,
    email: currentUserEmail,
    publicId: FFAppState().publicID,
    apiCloud: FFAppState().apiCloud,
  );
  logFirebaseEvent('CheckSubs_backend_call');
  getSubscribeCloudGame = await CloudpaymentsGroup.getSubscriptionCall.call(
    id: CloudpaymentsGroup.createSubscriptionCall
        .modelId(
          (modelId?.jsonBody ?? ''),
        )
        .toString()
        .toString(),
  );
  if (CloudpaymentsGroup.getSubscriptionCall
          .modelStatus(
            (getSubscribeCloudGame?.jsonBody ?? ''),
          )
          .toString() ==
      'Active') {
    return true;
  }

  return false;
}
