import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class NoWhitespace implements ValidatorBase<String> {
  String? message;
  ValidationLevel? validationLevel;

  NoWhitespace({
    this.message = ValidationConstants.defaultNoWhitespaceMessage,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;
    return message;
  }

  @override
  bool isValid(String value) {
    return value == value.trim();
  }
}
