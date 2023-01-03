import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class RepetitionError<T> implements ValidatorBase<T> {
  List<T> valueList;
  String? message;
  ValidationLevel? validationLevel = ValidationLevel.ERROR;

  RepetitionError({
    required this.valueList,
    this.message = ValidationConstants.defaultRepetitionErrorMessage,
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
