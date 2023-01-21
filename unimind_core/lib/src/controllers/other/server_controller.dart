//import 'package:library/library.dart';

import '../_controller_exporter.dart';
import '../_controller_import.dart';
import 'push_notification_controller.dart';

class ServerController extends GetxController {
  UserController userController = Get.put(UserController());
  LoginController loginController = Get.put(LoginController());
  WebSocketController webSocketController = Get.put(WebSocketController());
  PushNotificationController pushNotificationController =
      Get.put(PushNotificationController());

  void receiveWebSocketMessage(WebSocketMessage webSocketMessage,
      Function(String, String)? callback) async {
    print(webSocketMessage.toDebugString());
    if (webSocketMessage.operation == "Create" ||
        webSocketMessage.operation == "Update") {
      switch (webSocketMessage.type) {
        case "User":
          userController.getByIdThunk(id: webSocketMessage.data);
          break;
        default:
      }
    } else if (webSocketMessage.operation == "Delete") {
      switch (webSocketMessage.type) {
        case "User":
          userController.clearUser();
          break;
        default:
      }
    }
  }
}
