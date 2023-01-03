import 'package:grpc/grpc.dart';
import 'package:unimind_core/src/config/server_config.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../_controller_import.dart';
import 'user_controller_mixin.dart';

class UserController extends GetxController with UserControllerMixin {
  var userServiceClient = UserServiceClient(GrpcClientSingleton().client);
  late ResponseStream<User> getAllResponseStream;

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

  void getAllThunk() {
    try {
      getAllResponseStream = userServiceClient.getAll(
        Empty(),
        options: CallOptions(
          metadata: ServerConfig.metadata,
        ),
      );
      getAllResponseStream.listen((user) {
        addOrUpdate(user: user);
      });
    } catch (e) {}
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

  Future<String> existByEmailThunk({required String email}) async {
    try {
      StringResponse response = await userServiceClient.existByEmail(
        StringRequest()..data = email,
        options: CallOptions(
          metadata: ServerConfig.metadata,
        ),
      );
      return response.data;
    } catch (e) {
      return "Email ile eşleşen kullanıcı bulunamadı!";
    }
  }

  Future<void> createThunk({
    required User user,
    required Patient patient,
    Function(User)? onSuccess,
    Function(String?)? onError,
    bool isSavePreference = true,
  }) async {
    try {
      User reqUser = user.deepCopy();
      User response = await userServiceClient.create(
        UserPatientRequest()
          ..user = reqUser
          ..patient = patient,
        options: CallOptions(
          metadata: ServerConfig.metadata,
        ),
      );
      addOrUpdate(user: response);
      if (isSavePreference) {
        savePreferences(user.username, user.password);
      }
      onSuccess?.call(response);
    } catch (e) {
      onError?.call("Error on UserController createThunk");
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
        IdRequest()..id = user.id,
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

  Future<void> forgetPasswordThunk({
    required String data,
    Function(String)? onSuccess,
    Function(String?)? onError,
  }) async {
    try {
      var response = await userServiceClient.forgetPassword(
        StringRequest()..data = data,
        options: CallOptions(
          metadata: ServerConfig.metadata,
        ),
      );
      onSuccess?.call(response.data);
    } catch (e) {
      onError?.call("Error on UserController forgetPasswordThunk");
    }
  }
}

void savePreferences(String username, String password) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setString("username", username);
  sharedPreferences.setString("password", password);
  // sharedPreferences.setString("logged", "true");
}
