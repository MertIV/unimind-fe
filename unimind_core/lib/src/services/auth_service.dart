import '../common/_common_exporter.dart';
import '../models/user/_user_exporter.dart';

class ApiConstants {
  static String authEndpoint = 'https://localhost:3000/auth';
}

class RegisterUserCall {
  static Future<ApiCallResponse> call({required User user}) {
    return ApiManager.instance.makeApiCall(
      callName: 'RegisterUser',
      apiUrl: Uri.parse(ApiConstants.authEndpoint + '/register').toString(),
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': user.name,
        'email': user.email,
        'birthDate': user.birthDate,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}
