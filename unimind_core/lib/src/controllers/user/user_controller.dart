import 'package:grpc/grpc.dart';
import 'package:unimind_core/src/config/server_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../_controller_import.dart';
import 'user_controller_mixin.dart';

class UserController extends GetxController with UserControllerMixin {
  var userServiceClient = UserServiceClient(GrpcClientSingleton().client);

  @override
  void onInit() {
    ever(userListX, (dynamic _) {
      runFilter();
    });
    ever(filterTextX, (dynamic _) {
      runFilter();
    });
    super.onInit();
  }

  Future<void> getByIdThunk({required String id}) async {
    try {
      User user = await userServiceClient.getByID(
        IdRequest()..id = id,
        options: CallOptions(
          metadata: ServerConfig.metadata,
        ),
      );
      addOrUpdate(user: user);
    } catch (e) {}
  }

  Future<String> registerVerificationEmailThunk({required String email}) async {
    try {
      VerificationResponse response = await userServiceClient
          .registerVerification(VerificationRequest()..email = email);
      return response.token;
    } catch (e) {
      return "Email ile eşleşen kullanıcı bulunamadı!";
    }
  }

  Future<String> registerVerificationPhoneThunk({required String phone}) async {
    try {
      VerificationResponse response = await userServiceClient
          .registerVerification(VerificationRequest()..phone = phone);
      return response.token;
    } catch (e) {
      return "Telefon ile eşleşen kullanıcı bulunamadı!";
    }
  }

  Future<void> registerThunk({
    required User user,
    Function(String)? onSuccess,
    Function(String?)? onError,
    bool isSavePreference = true,
  }) async {
    try {
      User reqUser = user.deepCopy();
      LoginResponse response =
          await userServiceClient.register(UserRequest()..user = reqUser);
      //addOrUpdate(user: response);
      if (isSavePreference) {
        savePreferences(user.email, user.phone);
      }
      onSuccess?.call(response.message);
    } catch (e) {
      onError?.call("Error on UserController registerThunk");
    }
  }

  Future<void> updateThunk({
    required User user,
    Function(User)? onSuccess,
    Function? onError,
  }) async {
    try {
      User response = await userServiceClient.update(
        UserRequest()..user = user,
        options: CallOptions(
          metadata: ServerConfig.metadata,
        ),
      );
      addOrUpdate(user: response);
      onSuccess?.call(response);
    } catch (e) {
      onError?.call();
    }
  }

  Future<void> deleteThunk({
    required User user,
    Function(User)? onSuccess,
    Function? onError,
  }) async {
    try {
      await userServiceClient.delete(
        IdRequest()..id = user.userId,
        options: CallOptions(
          metadata: ServerConfig.metadata,
        ),
      );
      delete(user: user);
      onSuccess?.call(user);
    } catch (e) {
      onError?.call();
    }
  }

//   Future<void> forgetPasswordThunk({
//     required String data,
//     Function(String)? onSuccess,
//     Function(String?)? onError,
//   }) async {
//     try {
//       var response = await userServiceClient.forgetPassword(
//         StringRequest()..data = data,
//         options: CallOptions(
//           metadata: ServerConfig.metadata,
//         ),
//       );
//       onSuccess?.call(response.data);
//     } catch (e) {
//       onError?.call("Error on UserController forgetPasswordThunk");
//     }
//   }
}

void savePreferences(String username, String password) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("email", username);
  sharedPreferences.setString("phone", password);
  // sharedPreferences.setString("logged", "true");
}
