import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

extension ValidatorListExtension<T> on List<ValidatorBase<T>> {
  String? getErrorMessage(T value) {
    for (var validator in this) {
      if (!validator.isValid(value) && validator.validationLevel == ValidationLevel.ERROR) {
        return validator.getMessage(value);
      }
    }
    return null;
  }

  String? getWarningMessage(T value) {
    for (var validator in this) {
      if (!validator.isValid(value) && validator.validationLevel == ValidationLevel.WARNING) {
        return validator.getMessage(value);
      }
    }
    return null;
  }
}
