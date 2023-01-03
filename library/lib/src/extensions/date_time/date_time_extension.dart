import 'package:fixnum/fixnum.dart';

extension DateTimeExtension on DateTime {
  Int64 get asInt64 => Int64(this.millisecondsSinceEpoch);
  DateTime get startOfDay => DateTime(this.year, this.month, this.day);
  DateTime get endOfDay => DateTime(this.year, this.month, this.day, 23, 59, 59);
  bool isSameDay(DateTime date) =>
      this.year == date.year && this.month == date.month && this.day == date.day;
  bool isSameDayAndHour(DateTime date) =>
      this.year == date.year &&
      this.month == date.month &&
      this.day == date.day &&
      this.hour == date.hour;
}
