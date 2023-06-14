import 'package:flutter/material.dart';
import 'package:unimind_core/unimind_core.dart';

class LoginViewVC extends GetxController {
  LoginController loginController = Get.find();
  late TextEditingController usernameController;

  @override
  void onInit() {
    super.onInit();
    usernameController =
        TextEditingController(text: loginController.userX.value.email);
    loginController.getPreferences(emailController: usernameController);
  }
}
