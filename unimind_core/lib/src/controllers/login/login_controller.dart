import 'package:grpc/grpc.dart';
import 'package:ntp/ntp.dart';
import 'package:unimind_core/src/config/server_config.dart';
import 'package:unimind_core/src/controllers/other/server_controller.dart';
import 'package:unimind_core/src/enums/_enum_exporter.dart';
import 'package:unimind_core/src/services/cache_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../_controller_import.dart';

class LoginController extends GetxController {
  Rx<User> userX = User().obs;
  Rx<User> signUpUserX = User().obs;
  Rx<AppSettings> settingsX = AppSettings.initial().obs;

  RxString tokenX = "".obs;
  RxString verificationCodeX = "".obs;
  RxString loginErrorX = "".obs;

  Rx<LoginState> loginStateX = LoginState.NOT_STARTED.obs;

  var loginServiceClient = LoginServiceClient(GrpcClientSingleton().client);

  //Actions
  void setUser(User paramUser) {
    this.userX.value = paramUser;
  }

  void setToken(String paramToken) {
    ServerConfig.token = paramToken;
    this.tokenX.value = paramToken;
  }

  void setVerificationCode(String paramCode) {
    ServerConfig.verificationCode = paramCode;
    this.verificationCodeX.value = paramCode;
  }

  String get getToken {
    return ServerConfig.token;
  }

  void setLoginError(String paramError) {
    this.loginErrorX.value = paramError;
  }

  void setLoginState(LoginState paramLoginState) {
    this.loginStateX.value = paramLoginState;
  }

  //Thunk Actions
  Future<void> login({
    Function(User)? onSuccess,
    Function(User)? onExpiration,
    Function(String?)? onFail,
    bool isFacebook = false,
    String? email,
    String? generatedID,
  }) async {
    try {
      print("Logging in");
      setLoginState(LoginState.LOGGING);
      LoginResponse response;
      // if (isFacebook) {
      //   response = await loginServiceClient.facebookLogin(FacebookLoginRequest()
      //     ..email = email!
      //     ..generatedId = generatedID!);
      // } else {
      if (userX.value.email != "") {
        response = await loginServiceClient
            .login(LoginRequest()..email = userX.value.email);
      } else {
        response = await loginServiceClient
            .login(LoginRequest()..phone = userX.value.phone);
      }

      if (response.message != "Code is sent to user") {
        Get.back();
        return;
      }
    } on GrpcError catch (e) {
      print("Login failed");
      setLoginError("Login Failed");
      setLoginState(LoginState.FAILED);
      Get.back();
      onFail?.call(e.message);
    }
  }

  Future<void> loginVerification(
      {required String verificationCode, Function(String)? onError}) async {
    VerificationResponse response;
    response = await loginServiceClient
        .loginVerification(VerificationRequest()..code = verificationCode);

    if (response.token != "") {
      savePreferences(userX.value.email, userX.value.phone);
      //setUser(response.user..email = actualPass);
      setToken(response.token);

      if (userX.value.type == UserType.PSYCHIATRIST) {
        // _startDoctorServer();
        settingsX.value =
            await CacheService.getUserSettings(userX.value.userId);
      } else if (userX.value.type == UserType.PATIENT) {
        // _startPatientServer();
      }

      onError?.call(response.error);
    }
  }

  void savePreferences(String email, String phone) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("email", email);
    sharedPreferences.setString("phone", phone);
    sharedPreferences.setString("logged", "true");
  }

  void getPreferences(
      {required TextEditingController emailController,
      required TextEditingController phoneController}) async {
    SharedPreferences sharedPreferences;
    sharedPreferences = await SharedPreferences.getInstance();

    emailController.text = sharedPreferences.getString("email") ?? "";
    phoneController.text = sharedPreferences.getString("phone") ?? "";

    emailController.selection = TextSelection.fromPosition(
        TextPosition(offset: emailController.text.length));
    phoneController.selection = TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length));

    userX.value.email = emailController.text;
    userX.value.phone = phoneController.text;
  }

  // void _startDoctorServer() async {
  //   ServerController serverController = Get.find();
  //   // serverController.doctorController.getAllThunk();
  //   doctorX.value = await serverController.doctorController
  //       .getByIdThunkForLoginDoctor(id: userX.value.typeId);
  //   serverController.doctorProgramController
  //       .getAllByDoctorIDThunk(doctorID: userX.value.typeId);
  //   serverController.exerciseController.getAllThunk();
  //   serverController.exerciseProgramController
  //       .getAllThunkByDoctorID(doctorID: userX.value.typeId);
  //   serverController.patientController
  //       .getAllThunkByDoctorID(doctorID: userX.value.typeId);
  //   serverController.tradePatientTransactionController
  //       .getAllByDoctorIDThunk(doctorID: userX.value.typeId);
  //   serverController.appointmentRequestController
  //       .getAllThunkByDoctorID(doctorID: userX.value.typeId);
  //   serverController.pushNotificationController.setFcmTokenThunk();
  // }

  // void _startPatientServer() async {
  //   ServerController serverController = Get.find();
  //   serverController.exerciseController.getAllThunk();
  //   serverController.exerciseProgramController
  //       .getAllThunkByPatientID(patientID: userX.value.typeId);
  //   patientX.value = await serverController.patientController
  //       .getByIdThunkForLoginPatient(id: userX.value.typeId);
  //   serverController.patientController.addOrUpdate(patient: patientX.value);
  //   serverController.doctorProgramController
  //       .getAllByPatientIDThunk(patientID: userX.value.typeId);
  //   serverController.doctorController
  //       .getAllThunkByPatientID(patientID: userX.value.typeId);
  //   serverController.tradePatientTransactionController
  //       .getByPatientIdThunk(patientID: userX.value.typeId);
  //   serverController.appointmentRequestController
  //       .getAllThunkByPatientID(patientID: userX.value.typeId);
  //   serverController.pushNotificationController.setFcmTokenThunk();
  // }

  Future<void> setNewSettings(AppSettings settings, Function callback) async {
    bool res =
        await CacheService.setDoctorSettings(settings, userX.value.userId);
    if (res) {
      settingsX.value = settings;
      callback.call();
    }
  }
}
