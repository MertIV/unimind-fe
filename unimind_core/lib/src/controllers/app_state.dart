import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    CreditCard = prefs.getStringList('ff_CreditCard') ?? _CreditCard;
    userId = prefs.getString('user_id') ?? _userId;
    token = prefs.getString('token') ?? _token;
  }

  static bool _shouldNotify = true;
  void _maybeNotifyListeners() {
    if (_shouldNotify) notifyListeners();
  }

  // Update FFAppState without notifying and rebuilding all widgets.
  static void updateSilently(VoidCallback callback) {
    try {
      _shouldNotify = false;
      callback();
    } finally {
      _shouldNotify = true;
    }
  }

  late SharedPreferences prefs;

  List<String> _CreditCard = ['CreditCardNumber', 'ExpirationDate', 'CVC'];
  List<String> get CreditCard => _CreditCard;
  set CreditCard(List<String> _value) {
    _maybeNotifyListeners();
    _CreditCard = _value;
    prefs.setStringList('ff_CreditCard', _value);
  }

  void addToCreditCard(String _value) {
    _maybeNotifyListeners();
    _CreditCard.add(_value);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  void removeFromCreditCard(String _value) {
    _maybeNotifyListeners();
    _CreditCard.remove(_value);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  void addUserId(String _value) {
    _maybeNotifyListeners();
    prefs.setString('user_id', _value);
  }

  void removeUserId() {
    _maybeNotifyListeners();
    prefs.remove("user_id");
  }

  void addToken(String _value) {
    _maybeNotifyListeners();
    prefs.setString('token', _value);
  }

  void removeToken() {
    _maybeNotifyListeners();
    prefs.remove("token");
  }

  int _questionIndex = 0;
  int get questionIndex => _questionIndex;
  set questionIndex(int _value) {
    _maybeNotifyListeners();
    _questionIndex = _value;
  }

  String _Q1A = '';
  String get Q1A => _Q1A;
  set Q1A(String _value) {
    _maybeNotifyListeners();
    _Q1A = _value;
  }

  String _userId = '';
  String get userId => _userId;
  set userId(String _value) {
    _maybeNotifyListeners();
    _userId = _value;
    prefs.setString('user_id', _value);
  }

  String _token = '';
  String get token => _token;
  set token(String _value) {
    _maybeNotifyListeners();
    _token = _value;
    prefs.setString('token', _value);
  }
}
