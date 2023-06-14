import 'package:unimind_core/src/controllers/_controller_import.dart';

extension UserListExtension on List<User> {
  List<User> filterByFilterText({required String text}) {
    return this
        .where((element) =>
            element.name!.toLowerCase().contains(text.toLowerCase()) ||
            element.email!.toLowerCase().contains(text.toLowerCase()))
        .toList();
  }
}
