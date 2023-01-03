import 'package:unimind_core/src/controllers/_controller_import.dart';
import 'package:fixnum/fixnum.dart';
import 'package:unimind_core/src/models/grpc/dart_gen/google/protobuf/timestamp.pb.dart';

User exampleUser() {
  var user = User()
    ..userId = "Test Kullanıcı Adı"
    ..email = "Test Mail"
    ..phone = "Test Phone"
    ..paymentInfoIdList = ["Test 1", "Test 2"] as payment_info_id_list
    ..fullname = "Test Fullname"
    ..birthDate =
        Int64(DateTime.now().add(Duration(days: 30)).millisecondsSinceEpoch)
            as Timestamp
    ..type = UserType.PATIENT
    ..userMetadata = [
      {
        "title": "Test",
        "options": ["Test"],
        "selected_answer": "Test"
      } as Question
    ] as user_metadata;
  return user;
}
