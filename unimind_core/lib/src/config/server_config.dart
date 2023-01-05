class ServerConfig {
  static String token = "";
  static String verificationCode = "";
  static Map<String, String> get metadata {
    return {
      "x-auth-token": token,
    };
  }

  static String cloudinaryKey = "195183615248738";
  static String cloudinarySecret = "UFmhaA-s6DWtfDmMpF89IsIEPfc";
  static String cloudinaryName = "djga7phar";

  static String qrCodeSecret = "47e883f2e33e4a608fe5f865849c58cd";
  static String passwordSecret = "df13c61e4e92411b8336947cc936aeff";
}
