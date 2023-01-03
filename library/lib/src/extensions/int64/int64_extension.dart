import 'package:fixnum/fixnum.dart';

extension Int64Extension on Int64 {
  DateTime get toDateTime => DateTime.fromMillisecondsSinceEpoch(this.toInt());
}
