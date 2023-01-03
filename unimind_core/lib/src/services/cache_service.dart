import 'dart:convert';

import 'package:unimind_core/unimind_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  static EncryptDecryptHelper encryptDecryptHelper = EncryptDecryptHelper();

  static Future<Settings> getUserSettings(String userID) async {
    if (userID == "") return Settings.initial();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String settingsEncodedString = prefs.getString("$userID") ?? "";
    if (settingsEncodedString == "") return Settings.initial();
    Map<String, dynamic>? settingsMap =
        json.decode(encryptDecryptHelper.decryptQRData(settingsEncodedString));
    if (settingsMap != null) {
      return Settings.fromMap(settingsMap);
    } else {
      return Settings.initial();
    }
  }

  static Future<bool> setDoctorSettings(
      Settings settings, String doctorID) async {
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
