import 'package:flutter_test/flutter_test.dart';
import 'package:library/library.dart';

void main() {
  test("DateTime toTurkisFormat2 Test", () {
    var date = DateTime.now();
    print(date.toTurkishFormat1);
  });
}
