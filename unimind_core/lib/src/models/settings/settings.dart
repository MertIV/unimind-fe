import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:library/library.dart';

class Settings {
  num sessionMoney;
  Color notArrivedColor;
  Color? arrivedColor;
  int displayMinute;
  double startHour;
  double endHour;
  List<int> nonWorkingDays;
  int doctorProgramHeight;
  bool isClockHalfStart;
  Settings({
    required this.sessionMoney,
    required this.notArrivedColor,
    required this.arrivedColor,
    required this.displayMinute,
    required this.startHour,
    required this.endHour,
    required this.nonWorkingDays,
    required this.doctorProgramHeight,
    required this.isClockHalfStart,
  });

  Settings copyWith({
    num? sessionMoney,
    Color? notArrivedColor,
    Color? arrivedColor,
    String? calendarView,
    int? displayMinute,
    double? startHour,
    double? endHour,
    List<int>? nonWorkingDays,
    int? doctorProgramHeight,
    bool? isClockHalfStart,
  }) {
    return Settings(
      sessionMoney: sessionMoney ?? this.sessionMoney,
      notArrivedColor: notArrivedColor ?? this.notArrivedColor,
      arrivedColor: arrivedColor ?? this.arrivedColor,
      displayMinute: displayMinute ?? this.displayMinute,
      startHour: startHour ?? this.startHour,
      endHour: endHour ?? this.endHour,
      nonWorkingDays: nonWorkingDays ?? List<int>.from(this.nonWorkingDays),
      doctorProgramHeight: doctorProgramHeight ?? this.doctorProgramHeight,
      isClockHalfStart: isClockHalfStart ?? this.isClockHalfStart,
    );
  }

  bool isSame(Settings settings) {
    return this.sessionMoney == settings.sessionMoney &&
        this.notArrivedColor == settings.notArrivedColor &&
        this.arrivedColor == settings.arrivedColor &&
        this.displayMinute == settings.displayMinute &&
        this.startHour == settings.startHour &&
        this.endHour == settings.endHour &&
        this.nonWorkingDays == settings.nonWorkingDays &&
        this.doctorProgramHeight == settings.doctorProgramHeight &&
        this.isClockHalfStart == settings.isClockHalfStart;
  }

  factory Settings.initial({
    num? sessionMoney,
    num? notArrivedColor,
    num? arrivedColor,
    String? calendarView,
    int? displayMinute,
    double? startHour,
    double? endHour,
    List<int>? nonWorkingDays,
    int? doctorProgramHeight,
    bool? isClockHalfStart,
  }) {
    return Settings(
      sessionMoney: sessionMoney ?? 150,
      notArrivedColor: notArrivedColor as Color? ?? Colors.redAccent,
      arrivedColor: arrivedColor as Color? ?? Colors.green[300],
      displayMinute: displayMinute ?? 60,
      startHour: startHour ?? 0,
      endHour: endHour ?? 24,
      nonWorkingDays: nonWorkingDays ?? [],
      doctorProgramHeight: doctorProgramHeight ?? 81,
      isClockHalfStart: isClockHalfStart ?? false,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'sessionMoney': sessionMoney,
      'notArrivedColor': notArrivedColor.valueToString,
      'arrivedColor': arrivedColor!.valueToString,
      'displayMinute': displayMinute,
      'startHour': startHour,
      'endHour': endHour,
      'nonWorkingDays': nonWorkingDays,
      'doctorProgramHeight': doctorProgramHeight,
      'isClockHalfStart': isClockHalfStart,
    };
  }

  factory Settings.fromMap(Map<String, dynamic> map) {
    try {
      return Settings(
        sessionMoney: map['sessionMoney'] ?? 150,
        notArrivedColor: (map['notArrivedColor'] as String?)?.stringToColor ??
            Colors.redAccent,
        arrivedColor: (map['arrivedColor'] as String?)?.stringToColor ??
            Colors.green[300],
        displayMinute: map['displayMinute'] ?? 60,
        startHour: map['startHour'] ?? 0,
        endHour: map['endHour'] ?? 24,
        nonWorkingDays: List<int>.from(map['nonWorkingDays'] ?? []),
        doctorProgramHeight: map['doctorProgramHeight'] ?? 81,
        isClockHalfStart: map['isClockHalfStart'] ?? false,
      );
    } catch (e) {
      return Settings.initial();
    }
  }

  String toJson() => json.encode(toMap());

  factory Settings.fromJson(String source) =>
      Settings.fromMap(json.decode(source));

  @override
  String toString() =>
      'Settings(sessionMoney: $sessionMoney, lowLimit: $notArrivedColor, midLimit: $arrivedColor, displayMinute: $displayMinute, startHour: $startHour, endHour: $endHour, nonWorkingDays: $nonWorkingDays, doctorProgramHeight: $doctorProgramHeight isClockHalfStart: $isClockHalfStart)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Settings &&
        other.sessionMoney == sessionMoney &&
        other.notArrivedColor == notArrivedColor &&
        other.arrivedColor == arrivedColor &&
        other.displayMinute == displayMinute &&
        other.startHour == startHour &&
        other.endHour == endHour &&
        other.nonWorkingDays == nonWorkingDays &&
        other.doctorProgramHeight == doctorProgramHeight &&
        other.isClockHalfStart == isClockHalfStart;
  }

  @override
  int get hashCode =>
      sessionMoney.hashCode ^
      notArrivedColor.hashCode ^
      arrivedColor.hashCode ^
      displayMinute.hashCode ^
      startHour.hashCode ^
      endHour.hashCode ^
      nonWorkingDays.hashCode ^
      doctorProgramHeight.hashCode ^
      isClockHalfStart.hashCode;
}
