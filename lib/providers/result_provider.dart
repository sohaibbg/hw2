import 'package:flutter/material.dart';

class ResultProvider with ChangeNotifier {
  static const List<String> operators = [];
  static const List<String> numbers = [];
  String display = '0';

  /// updates display by computing relevant detail
  void input(String s) {
    try {
      _processInput(s);
    } catch (e) {
      display = 'math error';
    } finally {
      notifyListeners();
    }
  }

  /// processes input according to its format (number or operator)
  void _processInput(String s) {
    if (s == 'AC') display = '';
    if (s == '.') _processAsDecimal();
    if (operators.contains(s)) _processAsOperator(s);
    int? i = int.tryParse(s);
    if (i != null) _processAsNumber(i);
  }

  /// gets last operator or number value
  String get last => '';

  /// processes input as decimal and changes display
  void _processAsDecimal() {}

  /// edits display based on input number and previous data in display
  void _processAsNumber(int i) {
    double? lastDouble = double.tryParse(last);
    if (lastDouble != null) {
      // last was non-decimal 0 (replace)
      if (lastDouble == 0 && !last.contains('.')) {}
      // last was decimal number (append only)
      if (lastDouble == 0 && !last.contains('.')) {}
    }
    // last was operator (append)
    if (operators.contains(last)) {}
  }

  /// edits display based on input operator and previous data in display
  void _processAsOperator(String s) {
    // last was operator
    if (operators.contains(last)) return;
    // last was number
  }
}
