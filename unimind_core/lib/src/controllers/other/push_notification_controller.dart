import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:grpc/grpc.dart';
import 'package:unimind_core/unimind_core.dart';
import 'package:platform_device_id/platform_device_id.dart';

class PushNotificationController extends GetxController {
  var userServiceClient = UserServiceClient(GrpcClientSingleton().client);
  String? fcmToken;

  PushNotificationController() {
    requestPermission();
    setFcmToken();
    listenForTokenRefreshing();
  }

  void requestPermission() async {
    NotificationSettings settings =
        await FirebaseMessaging.instance.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    print(settings.authorizationStatus);
  }

  void setFcmToken() async {
    fcmToken = await FirebaseMessaging.instance.getToken();
  }

  void listenForTokenRefreshing() {
    FirebaseMessaging.instance.onTokenRefresh.listen((fcmToken) {
      this.fcmToken = fcmToken;
      setFcmTokenThunk();
    }).onError((err) {
      // Error getting token.
    });
  }

  Future<void> setFcmTokenThunk() async {
    try {
      LoginController loginController = Get.find();
      if (loginController.userX.value.id.isEmpty) {
        return;
      }
      var fcmTokenRequest = FcmTokenRequest(
        userId: loginController.userX.value.id,
        fcmToken: FcmToken(
          deviceId: await PlatformDeviceId.getDeviceId,
          fcmToken: fcmToken,
        ),
      );
      StringResponse response =
          await userServiceClient.setFcmToken(fcmTokenRequest,
              options: CallOptions(
                metadata: ServerConfig.metadata,
              ));
      print(response);
    } catch (e) {
      print(e);
    }
  }
}
