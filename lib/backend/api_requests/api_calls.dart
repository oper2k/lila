import 'dart:convert';
import 'dart:typed_data';
import '../cloud_functions/cloud_functions.dart';
import '../schema/structs/index.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Cloudpayments Group Code

class CloudpaymentsGroup {
  static PayByCardCopyCall payByCardCopyCall = PayByCardCopyCall();
  static CheckDSCopyCall checkDSCopyCall = CheckDSCopyCall();
  static RecieptCopyCall recieptCopyCall = RecieptCopyCall();
  static CreateSubscriptionCall createSubscriptionCall =
      CreateSubscriptionCall();
  static CancelSubscriptionCall cancelSubscriptionCall =
      CancelSubscriptionCall();
  static GetSubscriptionCall getSubscriptionCall = GetSubscriptionCall();
}

class PayByCardCopyCall {
  Future<ApiCallResponse> call({
    String? publicId = '',
    int? amount,
    String? cardCryptogramPacket = '',
    String? email = '',
    String? accountId = '',
    String? apiCloud = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'PayByCardCopyCall',
        'variables': {
          'publicId': publicId,
          'amount': amount,
          'cardCryptogramPacket': cardCryptogramPacket,
          'email': email,
          'accountId': accountId,
          'apiCloud': apiCloud,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  bool? isSuccess(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.Success''',
      ));
  String? urlForConfirm(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Model.AcsUrl''',
      ));
  int? transactionId(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Model.TransactionId''',
      ));
  String? paReq(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Model.PaReq''',
      ));
  dynamic? message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  String? successMessage(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Model.CardHolderMessage''',
      ));
  String? accountId(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Model.AccountId''',
      ));
  String? token(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Model.Token''',
      ));
  int? reasonCode(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.Model.ReasonCode''',
      ));
}

class CheckDSCopyCall {
  Future<ApiCallResponse> call({
    int? transactionId,
    String? paRes = '',
    String? apiCloud = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CheckDSCopyCall',
        'variables': {
          'transactionId': transactionId,
          'paRes': paRes,
          'apiCloud': apiCloud,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Model.CardHolderMessage''',
      );
  dynamic isSuccess(dynamic response) => getJsonField(
        response,
        r'''$.Success''',
      );
  dynamic accountID(dynamic response) => getJsonField(
        response,
        r'''$.Model.AccountId''',
      );
  dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.Model.Token''',
      );
}

class RecieptCopyCall {
  Future<ApiCallResponse> call({
    String? apiCloud = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'RecieptCopyCall',
        'variables': {
          'apiCloud': apiCloud,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }
}

class CreateSubscriptionCall {
  Future<ApiCallResponse> call({
    String? token = '',
    String? accountId = '',
    String? description = '',
    String? email = '',
    double? amount,
    String? publicId = '',
    String? startDate = '',
    String? interval = '',
    int? period,
    String? apiCloud = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CreateSubscriptionCall',
        'variables': {
          'token': token,
          'accountId': accountId,
          'description': description,
          'email': email,
          'amount': amount,
          'publicId': publicId,
          'startDate': startDate,
          'interval': interval,
          'period': period,
          'apiCloud': apiCloud,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  String? modelStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Model.Status''',
      ));
  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.Success''',
      ));
  dynamic modelId(dynamic response) => getJsonField(
        response,
        r'''$.Model.Id''',
      );
}

class CancelSubscriptionCall {
  Future<ApiCallResponse> call({
    String? apiCloud = '',
    String? id = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'CancelSubscriptionCall',
        'variables': {
          'apiCloud': apiCloud,
          'id': id,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  dynamic success(dynamic response) => getJsonField(
        response,
        r'''$.Success''',
      );
}

class GetSubscriptionCall {
  Future<ApiCallResponse> call({
    String? apiCloud = '',
    String? id = '',
  }) async {
    final response = await makeCloudCall(
      _kPrivateApiFunctionName,
      {
        'callName': 'GetSubscriptionCall',
        'variables': {
          'apiCloud': apiCloud,
          'id': id,
        },
      },
    );
    return ApiCallResponse.fromCloudCallResponse(response);
  }

  bool? success(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.Success''',
      ));
  dynamic message(dynamic response) => getJsonField(
        response,
        r'''$.Message''',
      );
  String? modelStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.Model.Status''',
      ));
}

/// End Cloudpayments Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
