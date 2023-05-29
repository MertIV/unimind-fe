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
  set CreditCard(List<String> value) {
    _CreditCard = value;
    prefs.setStringList('ff_CreditCard', value);
  }

  void addToCreditCard(String value) {
    _CreditCard.add(value);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  void removeFromCreditCard(String value) {
    _CreditCard.remove(value);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  void removeAtIndexFromCreditCard(int index) {
    _CreditCard.removeAt(index);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  void updateCreditCardAtIndex(
    int index,
    Function(String) updateFn,
  ) {
    updateFn(_CreditCard[index]);
    prefs.setStringList('ff_CreditCard', _CreditCard);
  }

  int _questionIndex = 0;
  int get questionIndex => _questionIndex;
  set questionIndex(int value) {
    _questionIndex = value;
  }

  String _Q1A = '';
  String get Q1A => _Q1A;
  set Q1A(String value) {
    _Q1A = value;
  }
}
