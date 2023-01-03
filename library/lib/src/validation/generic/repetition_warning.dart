import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class RepetitionWarning<T> implements ValidatorBase<T> {
  List<T> valueList;
  String? message;
  ValidationLevel? validationLevel = ValidationLevel.WARNING;

  RepetitionWarning({
    required this.valueList,
    this.message = ValidationConstants.defaultRepetitionWarningMessage,
  });

  @override
  String? getMessage(T value) {
    if (isValid(value)) return null;
    return message;
  }

  @override
  bool isValid(T value) {
    return !valueList.contains(value);
  }
}
