import 'package:library/src/validation/validation_level_enum.dart';

abstract class ValidatorBase<T> {
  ValidationLevel? validationLevel;
  String? message;

  String? getMessage(T value);

  bool isValid(T value);
}
