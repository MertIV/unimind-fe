import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class MaxLength implements ValidatorBase<String> {
  int length;
  String? message;
  ValidationLevel? validationLevel;

  MaxLength({
    this.length = ValidationConstants.defaultMaxLength,
    this.message,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;

    return message == null ? ValidationConstants.defaultMaxLengthMessage(length) : message;
  }

  @override
  bool isValid(String value) {
    return value.length <= length;
  }
}
