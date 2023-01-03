import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class Minlength implements ValidatorBase<String> {
  int length;
  String? message;
  ValidationLevel? validationLevel;

  Minlength({
    this.length = ValidationConstants.defaultMinLength,
    this.message,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;

    return message == null ? ValidationConstants.defaultMinLengthMessage(length) : message;
  }

  @override
  bool isValid(String value) {
    return value.length >= length;
  }
}
