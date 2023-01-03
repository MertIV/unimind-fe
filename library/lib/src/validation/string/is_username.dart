import 'package:library/src/constants/regexp_constants.dart';
import 'package:library/src/validation/_validator_exporter.dart';

class IsUsername implements ValidatorBase<String> {
  String? message;
  ValidationLevel? validationLevel;

  IsUsername({
    this.message = ValidationConstants.defaultIsUsernameMessage,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;
    return message;
  }

  @override
  bool isValid(String value) {
    return RegExpConstants.usernameRegExp.hasMatch(value) || value == "";
  }
}
