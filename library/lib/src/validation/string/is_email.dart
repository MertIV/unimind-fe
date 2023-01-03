import 'package:library/src/constants/regexp_constants.dart';
import 'package:library/src/validation/_validator_exporter.dart';

class IsEmail implements ValidatorBase<String> {
  String? message;
  ValidationLevel? validationLevel;

  IsEmail({
    this.message = ValidationConstants.defaultIsEmailMessage,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;
    return message;
  }

  @override
  bool isValid(String value) {
    return RegExpConstants.emailRegExp.hasMatch(value) || value == "";
  }
}
