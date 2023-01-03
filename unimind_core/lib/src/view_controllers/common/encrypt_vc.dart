import 'package:encrypt/encrypt.dart';
import 'package:unimind_core/unimind_core.dart';

class EncryptDecryptHelper {
  final qrCodeKey = Key.fromUtf8(ServerConfig.qrCodeSecret);
  final passwordKey = Key.fromUtf8(ServerConfig.passwordSecret);
  final iv = IV.fromLength(16);

  String encryptQRData(String text) {
    final encrypter = Encrypter(AES(qrCodeKey));

    final encrypted = encrypter.encrypt(text, iv: iv);

    return encrypted.base64;
  }

  String decryptQRData(String encryptedBase64) {
    final encrypter = Encrypter(AES(qrCodeKey));

    Encrypted encrypted = Encrypted.fromBase64(encryptedBase64);
    final decrypted = encrypter.decrypt(encrypted, iv: iv);
    return decrypted;
  }

  // String encryptPasswordData(String text) {
  //   final encrypter = Encrypter(AES(passwordKey, mode: AESMode.ecb));

  //   Encrypted encrypted = encrypter.encrypt(text, iv: iv);
  //   return encrypted.base64;
  // }

  // String decryptPasswordData(String encryptedBase64) {
  //   final encrypter = Encrypter(AES(passwordKey, mode: AESMode.ecb));

  //   Encrypted encrypted = Encrypted.fromBase64(encryptedBase64);
  //   final decrypted = encrypter.decrypt(encrypted, iv: iv);
  //   return decrypted;
  // }
}
