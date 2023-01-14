import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:unimind_core/src/config/server_config.dart';
import 'package:unimind_core/src/controllers/_controller_import.dart';
import 'package:unimind_core/src/enums/web_socket_state.dart';

import '../_controller_exporter.dart';
import 'package:uuid/uuid.dart';

class WebSocketController extends GetxController {
  Rx<WebSocketState> webSocketStateX = WebSocketState.NOT_CONNECTED.obs;
  String _generatedNewCode = "";
  var webSocketServiceClient = WebSocketServiceClient(GrpcClientSingleton().client);
  StreamController<ConnectionRequest> _controller = StreamController();

  @override
  void onClose() {
    _controller.close();
    super.onClose();
  }

  void setGeneratedCode() {
    _generatedNewCode = Uuid().v1();
  }

  //Actions
  void setWebSocketState(WebSocketState paramWebSocketState) {
    webSocketStateX.value = paramWebSocketState;
  }

  //Thunk actions
  void connect({
    required User user,
    Function(String, String)? callback,
  }) async {
    ServerController serverController = Get.find();
    try {
      final responseStream = webSocketServiceClient.connect(_controller.stream,
          options: CallOptions(metadata: ServerConfig.metadata));
      _controller.sink.add(ConnectionRequest()
        ..connectionCode = _generatedNewCode
        ..user = user);
      await for (var message in responseStream) {
        if (message.type == "Ack") {
          setWebSocketState(WebSocketState.CONNECTED);
          print("Acknowledged");
          print(message.toDebugString());
        } else {
          serverController.receiveWebSocketMessage(message, callback);
        }
      }
    } catch (e) {
      print("Connection error trying to reconnect");
      print(e);
      await Future.delayed(Duration(seconds: 1));
      setWebSocketState(WebSocketState.NOT_CONNECTED);
      _controller.close();
      _controller = StreamController();
      connect(user: user);
    }
  }
}
