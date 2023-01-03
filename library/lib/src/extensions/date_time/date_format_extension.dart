import '../int/_int_exporter.dart';

extension FormatExtension on DateTime {
  ///Example : 07.11.2020
  String get toTurkishFormat1 {
    String returned = "";
    returned += this.day.toString().padLeft(2, "0") + ".";
    returned += this.month.toString().padLeft(2, "0") + ".";
    returned += this.year.toString().padLeft(4, "0");
    return returned;
  }

  ///Example : 07.11.2020 - Sali 16:20
  String get toTurkishFormat2 {
    String returned = "";
    returned += this.day.toString().padLeft(2, "0") + ".";
    returned += this.month.toString().padLeft(2, "0") + ".";
    returned += this.year.toString().padLeft(4, "0") + " - ";
    returned += this.weekday.toWeekdayTurkish + " ";
    returned += this.hour.toString().padLeft(2, "0") + ":";
    returned += this.minute.toString().padLeft(2, "0");
    return returned;
  }

  ///Example : 16 Ekim 2020
  String get toTurkishFormat3 {
    String returned = "";
    returned += this.day.toString() + " ";
    returned += this.month.toMonthTurkish + " ";
    returned += this.year.toString().padLeft(4, "0");
    return returned;
  }

  ///Example : 16 Ekim 2020 - Salı 16:20
  String get toTurkishFormat4 {
    String returned = "";
    returned += this.day.toString() + " ";
    returned += this.month.toMonthTurkish + " ";
    returned += this.year.toString().padLeft(4, "0") + " ";
    returned += this.weekday.toWeekdayTurkish + " ";
    returned += this.hour.toString().padLeft(2, "0") + ":";
    returned += this.minute.toString().padLeft(2, "0");
    return returned;
  }

  ///Example : 07.11.2020 -  16:20
  String get toTurkishFormat5 {
    String returned = "";
    returned += this.day.toString().padLeft(2, "0") + ".";
    returned += this.month.toString().padLeft(2, "0") + ".";
    returned += this.year.toString().padLeft(4, "0") + " - ";
    returned += this.hour.toString().padLeft(2, "0") + ":";
    returned += this.minute.toString().padLeft(2, "0");
    return returned;
  }

  ///Example : 16 Ekim - 03:00
  String get toTurkishFormat6 {
    String returned = "";
    returned += this.day.toString() + " ";
    returned += this.month.toMonthTurkish + " - ";
    returned += this.hour.toString().padLeft(2, "0") + ":";
    returned += this.minute.toString().padLeft(2, "0");
    return returned;
  }
}
