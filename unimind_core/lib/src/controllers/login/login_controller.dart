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
  Rx<Doctor> doctorX = Doctor().obs;
  Rx<Patient> patientX = Patient().obs;
  Rx<Patient> signUpPatientX = Patient().obs;
  Rx<Settings> settingsX = Settings.initial().obs;

  RxString tokenX = "".obs;
  RxString password2 = "".obs;

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

  String get getToken {
    return ServerConfig.token;
  }

  void onPassword2Change(String value) {
    this.password2.value = value;
  }

  void setLoginError(String paramError) {
    this.loginErrorX.value = paramError;
  }

  void setLoginState(LoginState paramLoginState) {
    this.loginStateX.value = paramLoginState;
  }

  bool isDoctor() {
    return doctorX.value.id != "";
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
      String actualPass = userX.value.password;
      LoginResponse response;
      if (isFacebook) {
        response = await loginServiceClient.facebookLogin(FacebookLoginRequest()
          ..email = email!
          ..generatedId = generatedID!);
      } else {
        response = await loginServiceClient.login(LoginRequest()
          ..username = userX.value.username
          ..password = userX.value.password);
      }
      var _now = await NTP.now();
      if (response.user.expirationDateAsDateTime.isBefore(_now) &&
          response.user.userType == UserType.DOCTOR) {
        Get.back();
        onExpiration?.call(response.user..password = actualPass);
        return;
      }

      if (response.token != "") {
        savePreferences(userX.value.username, userX.value.password);
        setUser(response.user..password = actualPass);
        setToken(response.token);

        if (userX.value.userType == UserType.DOCTOR) {
          // _startDoctorServer();
          settingsX.value =
              await CacheService.getUserSettings(userX.value.typeId);
        } else if (userX.value.userType == UserType.PATIENT) {
          // _startPatientServer();
        }

        onSuccess?.call(response.user);
      }
    } on GrpcError catch (e) {
      print("Login failed");
      setLoginError("Login Failed");
      setLoginState(LoginState.FAILED);
      Get.back();
      onFail?.call(e.message);
    }
  }

  void savePreferences(String username, String password) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("username", username);
    sharedPreferences.setString("password", password);
    sharedPreferences.setString("logged", "true");
  }

  void getPreferences(
      {required TextEditingController usernameController,
      required TextEditingController passwordController}) async {
    SharedPreferences sharedPreferences;
    sharedPreferences = await SharedPreferences.getInstance();

    usernameController.text = sharedPreferences.getString("username") ?? "";
    passwordController.text = sharedPreferences.getString("password") ?? "";

    usernameController.selection = TextSelection.fromPosition(
        TextPosition(offset: usernameController.text.length));
    passwordController.selection = TextSelection.fromPosition(
        TextPosition(offset: passwordController.text.length));

    userX.value.username = usernameController.text;
    userX.value.password = passwordController.text;
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

  Future<void> setNewSettings(Settings settings, Function callback) async {
    bool res =
        await CacheService.setDoctorSettings(settings, userX.value.typeId);
    if (res) {
      settingsX.value = settings;
      callback.call();
    }
  }
}
