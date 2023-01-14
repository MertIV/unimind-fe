import 'package:unimind_core/src/controllers/_controller_import.dart';
import 'package:fixnum/fixnum.dart';
import 'package:unimind_core/src/models/grpc/dart_gen/google/protobuf/timestamp.pb.dart';

extension UserActionsExtension on User {
  void onUserNameChanged(String value) {
    this.userId = value;
  }

  void onEmailChanged(String value) {
    this.email = value;
  }

  void onPhoneChanged(String value) {
    this.email = value;
  }

  void onPaymentInfoChanged(payment_info_id_list value) {
    this.paymentInfoIdList = value;
  }

  void onFullnameChanged(String fullname) {
    this.fullname = fullname;
  }

  void onUserTypeSelected(UserType userType) {
    this.type = userType;
  }

  void onBirthdaySelected(String value) {
    var tsValue =
        Timestamp(seconds: Int64(DateTime.parse(value).millisecondsSinceEpoch));
    this.birthDate = tsValue;
  }

  void onUserMetaDataChanged(user_metadata value) {
    this.userMetadata = value;
  }

  // User onTypeIDSelected(String typeId) {
  //   return this.deepCopy()..typeId = typeId;
  // }
}
