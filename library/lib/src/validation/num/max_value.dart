import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class MaxValue implements ValidatorBase<String> {
  num max;
  String? message;
  ValidationLevel? validationLevel;

  MaxValue({
    this.max = ValidationConstants.defaultMaxValue,
    this.message,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;

    return message ?? ValidationConstants.defaultMaxValueMessage(max);
  }

  @override
  bool isValid(String value) {
    num? parsed = num.tryParse(value);
    if (parsed == null) {
      return false;
    } else {
      return parsed <= max;
    }
  }
}
