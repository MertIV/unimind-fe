import 'package:flutter/cupertino.dart';

extension ColorExtension on Color {
  String get valueToString {
    return "${this.alpha}-${this.red}-${this.green}-${this.blue}";
  }
}
