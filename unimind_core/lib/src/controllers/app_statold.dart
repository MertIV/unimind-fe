import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppStateOLd extends ChangeNotifier {
  static final FFAppStateOLd _instance = FFAppStateOLd._internal();

  factory FFAppStateOLd() {
    return _instance;
  }

  FFAppStateOLd._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _CreditCard = prefs.getStringList('ff_CreditCard') ?? _CreditCard;
    userId = prefs.getString('user_id') ?? _userId;
    token = prefs.getString('token') ?? _token;
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

  void removeAtIndexFromCreditCard(int _index) {
    _CreditCard.removeAt(_index);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  void addUserId(String _value) {
    prefs.setString('user_id', _value);
  }

  void removeUserId() {
    prefs.remove("user_id");
  }

  void addToken(String _value) {
    prefs.setString('token', _value);
  }

  void removeToken() {
    prefs.remove("token");
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

  String _userId = '';
  String get userId => _userId;
  set userId(String _value) {
    _userId = _value;
    prefs.setString('user_id', _value);
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _token = _value;
    prefs.setString('token', _value);
  }
}
