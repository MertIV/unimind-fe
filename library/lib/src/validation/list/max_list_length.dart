import 'package:library/src/validation/validation_constants.dart';
import 'package:library/src/validation/validation_level_enum.dart';
import 'package:library/src/validation/validator_base.dart';

class MaxListLength implements ValidatorBase<String> {
  int max;
  List list;
  String? message;
  ValidationLevel? validationLevel;

  MaxListLength({
    this.max = ValidationConstants.defaultMaxListLength,
    required this.list,
    this.message,
    this.validationLevel = ValidationLevel.ERROR,
  });

  @override
  String? getMessage(String value) {
    if (isValid(value)) return null;

    return message ?? ValidationConstants.defaultMaxListLengthMessage(max);
  }

  @override
  bool isValid(String value) {
    print("Checking length");
    print(list.length);
    return list.length <= max;
  }
}
