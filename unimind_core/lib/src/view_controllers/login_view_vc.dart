import 'package:flutter/material.dart';
import 'package:unimind_core/unimind_core.dart';

class LoginViewVC extends GetxController {
  AuthController authController = Get.put(AuthController());
  late TextEditingController emailController;

  @override
  void onInit() {
    super.onInit();
    emailController =
        TextEditingController(text: authController.userX.value.email);
    authController.getPreferences(emailController: emailController);
  }
}
