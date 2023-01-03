import 'package:unimind_core/src/controllers/_controller_import.dart';

extension UserActionsExtension on User {
  void onUserNameChanged(String value) {
    this.username = value;
  }

  void onPasswordChanged(String value) {
    this.password = value;
  }

  void onFullnameChanged(String fullname) {
    this.fullname = fullname;
  }

  void onUserTypeSelected(UserType userType) {
    this.userType = userType;
  }

  void onEmailChanged(String email) {
    this.email = email;
  }

  User onTypeIDSelected(String typeId) {
    return this.deepCopy()..typeId = typeId;
  }
}
