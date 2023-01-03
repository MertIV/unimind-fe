import 'package:library/src/validation/_validator_exporter.dart';

class CommonValidators {
  static List<ValidatorBase> emailValidators() {
    return [
      IsEmail(),
      MaxLength(),
    ];
  }

  static List<ValidatorBase> usernameValidators() {
    return [
      IsUsername(),
      MaxLength(),
    ];
  }

  static List<ValidatorBase> addressValidators() {
    return [
      MaxLength(),
    ];
  }

  static List<ValidatorBase> descriptionValidators() {
    return [
      MaxLength(),
    ];
  }

  static List<ValidatorBase> phoneValidators() {
    return [
      NotEmpty(),
      MaxLength(),
      NumInput(),
    ];
  }

  static List<ValidatorBase> moneyValidators({num min = 1}) {
    return [
      NotEmpty(),
      NumInput(),
      MinValue(min: min),
    ];
  }

  static List<ValidatorBase> amountValidators() {
    return [
      NotEmpty(),
      NumInput(),
      MinValue(min: 1),
    ];
  }
}
