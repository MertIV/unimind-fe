import '../_model_exporter.dart';

class UserTypeHelper {
  static List<UserType> getUserTypeList() {
    return UserType.values;
  }

  static String getTurkishString(UserType userType) {
    switch (userType) {
      case UserType.DOCTOR:
        return "Doktor";

      case UserType.PATIENT:
        return "Hasta";

      default:
        return "Kullanıcı Tipi";
    }
  }
}
