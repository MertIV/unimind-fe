class ValidationConstants {
  static const int defaultMinLength = 6;
  static const int defaultMaxLength = 255;
  static const int defaultMaxListLength = 20;
  static const num defaultMaxValue = 999999;
  static const num defaultMinValue = 1;

  static String defaultMinLengthMessage(int length) {
    return "Bu alan $length karakterden uzun olmalıdır.";
  }

  static String defaultMaxLengthMessage(int length) {
    return "Bu alan $length karakterden kısa olmalıdır.";
  }

  static String defaultMaxListLengthMessage(int length) {
    return "Bu alan en çok $length elemandan oluşmalıdır.";
  }

  static String defaultMaxValueMessage(num value) {
    return "Bu alan ${(value)} veya küçük olmalıdır.";
  }

  static String defaultMinValueMessage(num value) {
    return "Bu alan ${(value - 1)} veya büyük olmalıdır.";
  }

  static const String defaultNoWhitespaceMessage =
      "Bu alan boşluk karakteriyle başlayamaz ve bitemez.";
  static const String defaultNotEmptyMessage = "Bu alan boş bırakılamaz.";
  static const String defaultRepetitionErrorMessage = "Bu değer daha önce kullanılmış.";
  static const String defaultRepetitionWarningMessage = "Sistemde uyarılar bulunmaktadır.";
  static const String defaultNumInputMessage = "Bu alan sayı olmalıdır.";
  static const String defaultIsEmailMessage = "Geçerli bir mail adresi giriniz.";
  static const String defaultIsUsernameMessage = "Geçerli bir kullanıcı adı giriniz.";
}
