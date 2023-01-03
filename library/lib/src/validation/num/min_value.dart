import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class MinValue implements ValidatorBase<String> {
  num min;
  String? message;
  ValidationLevel? validationLevel;

  MinValue({
    this.min = ValidationConstants.defaultMinValue,
    this.message,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;

    return message ?? ValidationConstants.defaultMinValueMessage(min);
  }

  @override
  bool isValid(String value) {
    num? parsed = num.tryParse(value);
    if (parsed == null) {
      return false;
    } else {
      return parsed >= min;
    }
  }
}
