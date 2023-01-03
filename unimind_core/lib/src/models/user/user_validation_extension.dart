import 'package:library/library.dart';
import '../_model_exporter.dart';

extension UserValidationExtension on User {
  List<ValidatorBase> userNameValidators(List<User> userList) {
    var actualList = List<User>.from(userList)..removeWhere((element) => element.id == this.id);

    return [
      NotEmpty(),
      RepetitionError(
        valueList: actualList.map((e) => e.username).toList(),
      ),
      NoWhitespace(
        message: "Kullanıcı adında boşluk bulunamaz.",
      ),
      Minlength(length: 6),
      MaxLength(length: 25),
    ];
  }

  List<ValidatorBase> nameValidators(List<User> userList) {
    var actualList = List<User>.from(userList)..removeWhere((element) => element.id == this.id);
    return [
      NotEmpty(),
      RepetitionWarning(
          valueList: actualList.map((e) => e.username).toList(),
          message: "Bu kullanıcı adı ile kayıtlı başka bir kullanıcı bulunmaktadır."),
    ];
  }

  List<ValidatorBase> passwordValidators() {
    return [
      NotEmpty(),
      Minlength(length: 6),
      MaxLength(length: 25),
      NoWhitespace(
        message: "Şifrede boşluk bulunamaz.",
      ),
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
