import 'package:flutter/material.dart';

extension StringExtensions on String {
  String get toSeoName {
    return this
        .toLowerCase()
        .replaceAll("ı", "i")
        .replaceAll("ü", "u")
        .replaceAll("ö", "o")
        .replaceAll("ğ", "g")
        .replaceAll("ş", "s")
        .replaceAll("ç", "c")
        .replaceAll(" ", "_")
        .replaceAll(RegExp(r".\$/()=?#{[]}*^@"), "");
  }

  String get removeTurkishCharacters {
    return this
        .replaceAll("ı", "i")
        .replaceAll("ü", "u")
        .replaceAll("ö", "o")
        .replaceAll("ğ", "g")
        .replaceAll("ş", "s")
        .replaceAll("ç", "c")
        .replaceAll("İ", "I")
        .replaceAll("Ü", "U")
        .replaceAll("Ö", "O")
        .replaceAll("Ğ", "G")
        .replaceAll("Ş", "S")
        .replaceAll("Ç", "C");
  }

  String get firstLetterToUpperCase {
    List<String> allStrings =
        this.trim().split(' ').where((element) => element != "").toList();
    List<String> resL = [];
    for (var string in allStrings) {
      resL.add(string[0].toUpperCase() + string.substring(1).toLowerCase());
    }
    return resL.join(' ');
  }

  String get replacePhoneMask {
    return this
        .replaceAll('(', '')
        .replaceAll(')', '')
        .replaceAll('-', '')
        .replaceAll(' ', '')
        .replaceAll('+', '');
  }

  String get toFileName {
    return this.replaceAll(" ", "-").replaceAll(".", "-");
  }

  String get upperLetters {
    return this.split(' ').map((e) => e[0].toUpperCase()).join();
  }

  Color get stringToColor {
    List<int> argbL = this.split('-').map((e) => int.parse(e)).toList();
    return Color.fromARGB(argbL[0], argbL[1], argbL[2], argbL[3]);
  }
}
