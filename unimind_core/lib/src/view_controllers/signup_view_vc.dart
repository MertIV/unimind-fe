import 'package:flutter/material.dart';
import 'package:unimind_core/unimind_core.dart';

class SignUpViewVC extends GetxController {
  AuthController authController = Get.put(AuthController());
  late TextEditingController nameController;
  String? Function(BuildContext, String?)? nameSignupControllerValidator;

  late TextEditingController emailController;
  String? Function(BuildContext, String?)? emailSignupControllerValidator;

  late TextEditingController birthDateController;
  String? Function(BuildContext, String?)? birthDateSignupControllerValidator;

  @override
  void onInit() {
    super.onInit();
    nameController =
        TextEditingController(text: authController.userX.value.name);
    emailController =
        TextEditingController(text: authController.userX.value.email);
    birthDateController = TextEditingController(
        text: authController.userX.value.birthDate.toString());
  }
}
