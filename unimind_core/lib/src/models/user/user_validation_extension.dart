import 'package:library/library.dart';
import '../_model_exporter.dart';

extension UserValidationExtension on User {
  List<ValidatorBase> emailValidators() {
    return [
      IsEmail(),
      NoWhitespace(
        message: "E-mailde boşluk bulunamaz.",
      ),
    ];
  }
}
