import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _CreditCard = prefs.getStringList('ff_CreditCard') ?? _CreditCard;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<String> _CreditCard = ['CreditCardNumber', 'ExpirationDate', 'CVC'];
  List<String> get CreditCard => _CreditCard;
  set CreditCard(List<String> _value) {
    _CreditCard = _value;
    prefs.setStringList('ff_CreditCard', _value);
  }

  void addToCreditCard(String _value) {
    _CreditCard.add(_value);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  void removeFromCreditCard(String _value) {
    _CreditCard.remove(_value);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  int _questionIndex = 0;
  int get questionIndex => _questionIndex;
  set questionIndex(int _value) {
    _questionIndex = _value;
  }

  String _Q1A = '';
  String get Q1A => _Q1A;
  set Q1A(String _value) {
    _Q1A = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
