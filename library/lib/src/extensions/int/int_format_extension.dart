import 'package:library/src/common/_common_exporter.dart';

int _dateThresholdMinute = 60;
int _dateThresholdHour = 3600;
int _dateThresholdDay = 86400;

extension IntFormatExtension on int {
  ///Example : 1.532,00 ₺
  String get asTurkishMoneyString {
    return CommonMethods.numberToTurkishMoneyString(this, shouldAddZeros: true) + " ₺";
  }

  ///Example : 5.421.432
  String asAmountString({bool shouldAddZeros = false}) {
    return CommonMethods.numberToTurkishMoneyString(this, shouldAddZeros: shouldAddZeros);
  }

  String get asTimeDifferenceString {
    num seconds = this / 1000;
    String res = "";
    if (seconds > _dateThresholdDay) {
      res += "${seconds ~/ _dateThresholdDay} gün ";
      seconds = seconds % _dateThresholdDay;
    }
    if (seconds <= _dateThresholdDay) {
      res += "${seconds ~/ _dateThresholdHour} saat ";
      seconds = seconds % _dateThresholdHour;
    }
    if (seconds <= _dateThresholdHour) {
      res += "${seconds ~/ _dateThresholdMinute} dakika ";
      seconds = seconds % _dateThresholdMinute;
    }
    if (seconds <= _dateThresholdMinute) {
      res += "${seconds.toStringAsFixed(0)} saniye";
    }
    return res;
  }
}
