import 'dart:convert';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class RegisterUserCall {
  static Future<ApiCallResponse> call({
    String? birthdate = '',
    String? email = '',
    String? phone = '',
    String? name = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUser',
      apiUrl: 'http://127.0.0.1:3050/api/users/register',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'phone': phone,
        'email': email,
        'birthdate': birthdate,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
    );
  }
}

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
