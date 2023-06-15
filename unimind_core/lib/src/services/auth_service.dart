import '../common/_common_exporter.dart';
import '../models/user/_user_exporter.dart';

class ApiConstants {
  static String authEndpoint = 'http://192.168.0.54:3000/v1/auth';
}

class RegisterUserCall {
  static Future<ApiCallResponse> call({required User user}) {
    return ApiManager.instance.makeApiCall(
      callName: 'register',
      apiUrl: Uri.parse(ApiConstants.authEndpoint + '/register').toString(),
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': user.name,
        'email': user.email,
        'birthDate': user.birthDate.toString(),
      },
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}
