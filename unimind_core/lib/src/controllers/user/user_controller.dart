import 'package:shared_preferences/shared_preferences.dart';
import 'package:unimind_core/unimind_core.dart';

class UserController extends GetxController {
  Rx<User> userX = User().obs;

  void setUser(User paramUser) {
    this.userX.value = paramUser;
  }

  void clearUser() {
    this.userX.value = User();
  }

  // Future<void> getByIdThunk({required String id}) async {
  //   try {
  //     User user = await userServiceClient.getByID(
  //       IdRequest()..id = id,
  //       options: CallOptions(
  //         metadata: ServerConfig.metadata,
  //       ),
  //     );
  //     setUser(user);
  //   } catch (e) {}
  // }

  // Future<String> registerVerificationEmailThunk(
  //     {required String email,
  //     required String code,
  //     Function()? onSuccess,
  //     Function(String)? onError}) async {
  //   try {
  //     VerificationResponse response =
  //         await userServiceClient.registerVerification(VerificationRequest()
  //           ..email = email
  //           ..code = code);

  //     if (response.token != "") {
  //       savePreferences(response.userId, response.token);
  //       LoginController LoginController = Get.find();
  //       LoginController.setUser(this.userX.value);
  //       LoginController.setToken(response.token);
  //       LoginController.setLoginState(LoginState.LOGGED);

  //       if (userX.value.type == UserType.PSYCHIATRIST) {
  //         // _startDoctorServer();
  //         // settingsX.value =
  //         //     await CacheService.getUserSettings(userX.value.userId);
  //       } else if (userX.value.type == UserType.PATIENT) {
  //         // _startPatientServer();
  //       }
  //       onSuccess?.call();
  //     } else {
  //       onError?.call(response.error);
  //     }
  //     LoginController LoginController = Get.find();
  //     LoginController.setToken(response.token);
  //     return response.token;
  //   } catch (e) {
  //     return "Email ile eşleşen kullanıcı bulunamadı!";
  //   }
  // }

  // Future<String> registerVerificationPhoneThunk(
  //     {required String phone, required String code}) async {
  //   try {
  //     VerificationResponse response =
  //         await userServiceClient.registerVerification(VerificationRequest()
  //           ..phone = phone
  //           ..code = code);
  //     LoginController LoginController = Get.find();
  //     LoginController.setToken(response.token);
  //     return response.token;
  //   } catch (e) {
  //     return "Telefon ile eşleşen kullanıcı bulunamadı!";
  //   }
  // }

  // Future<void> updateThunk({
  //   required User user,
  //   Function(User)? onSuccess,
  //   Function? onError,
  // }) async {
  //   try {
  //     User response = await userServiceClient.update(
  //       UserRequest()..user = user,
  //       options: CallOptions(
  //         metadata: ServerConfig.metadata,
  //       ),
  //     );
  //     setUser(response);
  //     onSuccess?.call(response);
  //   } catch (e) {
  //     onError?.call();
  //   }
  // }

  // Future<void> deleteThunk({
  //   required User user,
  //   Function(User)? onSuccess,
  //   Function? onError,
  // }) async {
  //   try {
  //     await userServiceClient.delete(
  //       IdRequest()..id = user.userId,
  //       options: CallOptions(
  //         metadata: ServerConfig.metadata,
  //       ),
  //     );
  //     clearUser();
  //     onSuccess?.call(user);
  //   } catch (e) {
  //     onError?.call();
  //   }
  // }

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

void savePreferences(String? username) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("email", username!);
  // sharedPreferences.setString("logged", "true");
}
