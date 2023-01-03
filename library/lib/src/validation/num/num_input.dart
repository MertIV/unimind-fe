import 'package:library/src/constants/regexp_constants.dart';
import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class NumInput implements ValidatorBase<String> {
  String? message;
  ValidationLevel? validationLevel;

  NumInput({
    this.message,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;

    return message ?? ValidationConstants.defaultNumInputMessage;
  }

  @override
  bool isValid(String value) {
    num? parsed = num.tryParse(value);
    if (parsed == null) {
      return false;
    } else {
      return RegExpConstants.numRegExp.hasMatch(value);
    }
  }
}
