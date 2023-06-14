import 'package:unimind_core/src/controllers/_controller_import.dart';

User exampleUser() {
  var user = User()
    ..email = "Test Mail"
    ..name = "Test Fullname"
    ..birthDate = DateTime.parse("1996-07-28")
    ..role = "user"
    ..isEmailVerified = true;
  return user;
}
