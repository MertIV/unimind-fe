import 'package:flutter/material.dart';
import 'package:unimind_core/unimind_core.dart';
import 'package:unimind_mobile/flutter_flow/flutter_flow_theme.dart';
import 'package:unimind_mobile/style/_style_exporter.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void callSnackBar(String message, String body, String snackType) {
  var theme = LightModeTheme();
  Get.snackbar(
    message,
    body,
    onTap: (_) {},
    duration: Duration(seconds: 4),
    animationDuration: Duration(milliseconds: 1500),
    snackPosition: SnackPosition.TOP,
    backgroundColor: theme.secondaryBackground,
    borderColor: CustomTheme.primaryColor,
    borderWidth: 1,
    snackStyle: SnackStyle.FLOATING,
    forwardAnimationCurve: Curves.linearToEaseOut,
    borderRadius: 0,
    icon: Icon(
      snackType == SnackType.POSITIVE
          ? Icons.check
          : snackType == SnackType.NEGATIVE
              ? FontAwesomeIcons.arrowDown
              : FontAwesomeIcons.circleInfo,
      color: snackType == SnackType.POSITIVE
          ? theme.secondaryColor
          : snackType == SnackType.NEGATIVE
              ? theme.gray600
              : Colors.yellow[700],
      size: 30,
    ),
  );
}

class SnackType {
  static const String POSITIVE = "POSITIVE";
  static const String NEGATIVE = "NEGATIVE";
  static const String INFORMATION = "INFORMATION";
}
