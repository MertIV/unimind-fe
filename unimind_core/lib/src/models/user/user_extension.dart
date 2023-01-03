import 'package:unimind_core/src/controllers/_controller_import.dart';
import 'package:fixnum/fixnum.dart';
import 'package:unimind_core/src/models/grpc/dart_gen/google/protobuf/timestamp.pb.dart';

extension UserExtension on User {
  User initial() {
    return User();
  }

  void preCreateProcessor({
    required UserType userType,
  }) {
    this..type = userType;
  }

  DateTime get createdAtDateAsDateTime => this.createdAt.toDateTime();
  DateTime get updatedAtDateAsDateTime => this.updatedAt.toDateTime();

  set toCreatedAtDate(DateTime date) {
    this.createdAt = Int64(date.millisecondsSinceEpoch) as Timestamp;
  }

  set toUpdatedAtDate(DateTime date) {
    this.updatedAt = Int64(date.millisecondsSinceEpoch) as Timestamp;
  }

  String userTypeTurkishString() {
    switch (this.type) {
      case UserType.PSYCHIATRIST:
        return "Psikolog";
      case UserType.PATIENT:
        return "Hasta";
      default:
        return "";
    }
  }
}
