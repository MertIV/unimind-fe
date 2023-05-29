import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppState extends ChangeNotifier {
  static final AppState _instance = AppState._internal();

  factory AppState() {
    return _instance;
  }

  AppState._internal();

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

  void removeAtIndexFromCreditCard(int _index) {
    _CreditCard.removeAt(_index);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  void updateCreditCardAtIndex(
    int _index,
    Function(String) updateFn,
  ) {
    updateFn(_CreditCard[_index]);
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
