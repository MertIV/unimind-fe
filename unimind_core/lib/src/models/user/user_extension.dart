import 'package:unimind_core/src/controllers/_controller_import.dart';
import 'package:fixnum/fixnum.dart';

extension UserExtension on User {
  User initial() {
    return User();
  }

  void preCreateProcessor({
    required UserType userType,
  }) {
    this..userType = userType;
  }

  DateTime get createdAtDateAsDateTime => DateTime.fromMillisecondsSinceEpoch(
        this.createdAt.toInt(),
      );
  DateTime get updatedAtDateAsDateTime => DateTime.fromMillisecondsSinceEpoch(
        this.updatedAt.toInt(),
      );
  DateTime get expirationDateAsDateTime => DateTime.fromMillisecondsSinceEpoch(
        this.expirationDate.toInt(),
      );

  set toCreatedAtDate(DateTime date) {
    this.createdAt = Int64(date.millisecondsSinceEpoch);
  }

  set toUpdatedAtDate(DateTime date) {
    this.updatedAt = Int64(date.millisecondsSinceEpoch);
  }

  set toExpirationDate(DateTime date) {
    this.expirationDate = Int64(date.millisecondsSinceEpoch);
  }

  String userTypeTurkishString() {
    switch (this.userType) {
      case UserType.DOCTOR:
        return "Doktor";
      case UserType.PATIENT:
        return "Hasta";
      default:
        return "";
    }
  }
}
