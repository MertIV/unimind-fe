import 'package:unimind_core/src/controllers/_controller_import.dart';
import 'package:fixnum/fixnum.dart';

User exampleUser() {
  var user = User()
    ..username = "Test Kullanıcı Adı"
    ..password = "Test Şifre"
    ..fullname = "Test Fullname"
    ..userType = UserType.DOCTOR
    ..typeId = "Test Type ID"
    ..expirationDate =
        Int64(DateTime.now().add(Duration(days: 30)).millisecondsSinceEpoch);
  return user;
}
