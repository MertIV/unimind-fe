import 'package:unimind_core/src/controllers/_controller_import.dart';

extension UserListExtension on List<User> {
  List<User> filterByFilterText({required String text}) {
    return this
        .where((element) =>
            element.username.toLowerCase().contains(text.toLowerCase()) ||
            element.password.toLowerCase().contains(text.toLowerCase()) ||
            element.fullname.toLowerCase().contains(text.toLowerCase()))
        .toList();
  }
}
