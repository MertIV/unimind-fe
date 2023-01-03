import 'package:library/library.dart';
import '../_model_exporter.dart';

extension UserValidationExtension on User {
  List<ValidatorBase> phoneValidators(List<User> userList) {
    var actualList = List<User>.from(userList)
      ..removeWhere((element) => element.userId == this.userId);
    return [
      NotEmpty(),
      RepetitionWarning(
          valueList: actualList.map((e) => e.phone).toList(),
          message:
              "Bu telefon numarası ile kayıtlı başka bir kullanıcı bulunmaktadır."),
    ];
  }

  List<ValidatorBase> emailValidators() {
    return [
      IsEmail(),
      NoWhitespace(
        message: "E-mailde boşluk bulunamaz.",
      ),
    ];
  }
}
