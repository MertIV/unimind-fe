import 'dart:convert';

import 'package:unimind_core/unimind_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  static EncryptDecryptHelper encryptDecryptHelper = EncryptDecryptHelper();

  static Future<AppSettings> getUserSettings(String userID) async {
    if (userID == "") return AppSettings.initial();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String settingsEncodedString = prefs.getString("$userID") ?? "";
    if (settingsEncodedString == "") return AppSettings.initial();
    Map<String, dynamic>? settingsMap =
        json.decode(encryptDecryptHelper.decryptQRData(settingsEncodedString));
    if (settingsMap != null) {
      return AppSettings.fromMap(settingsMap);
    } else {
      return AppSettings.initial();
    }
  }

  static Future<bool> setDoctorSettings(
      AppSettings settings, String doctorID) async {
    if (doctorID != "") {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String settingsEncodedString =
          encryptDecryptHelper.encryptQRData(settings.toJson());
      await prefs.setString("$doctorID", settingsEncodedString);
      return true;
    }
    return false;
  }
}
