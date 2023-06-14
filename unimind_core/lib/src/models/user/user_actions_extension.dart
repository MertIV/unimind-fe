import 'package:unimind_core/src/controllers/_controller_import.dart';

extension UserActionsExtension on User {
  void onEmailChanged(String value) {
    this.email = value;
  }

  void onNameChanged(String fullname) {
    this.name = fullname;
  }

  void onIsEmailVerifiedChanged(bool isEmailVerified) {
    this.isEmailVerified = isEmailVerified;
  }

  void onBirthDateSelected(DateTime value) {
    this.birthDate = value;
  }
}
