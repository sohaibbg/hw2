import 'package:flutter/material.dart';

class ResultProvider with ChangeNotifier {
  static const List<String> _operators = ['+', '–', '×', '÷', '%'];
  static List<String> _inputs = [];
  String get display {
    if (_inputs.isEmpty) return '';
    if (_inputs.first.contains('error')) return _inputs.first;
    for (int i = 0; i < _inputs.length - 1; i++) {
      if (_inputs[i].endsWith('.')) {
        _inputs[i] = _inputs[i].substring(0, _inputs[i].length - 1);
      }
    }
    return _inputs.join(' ');
  }

  /// updates display by computing relevant detail
  void input(String s) {
    try {
      _processInput(s);
    } catch (e) {
      _inputs = ['math error'];
    } finally {
      notifyListeners();
    }
  }

  /// directs input to be processed according to its format
  void _processInput(String s) {
    if (s == 'AC') {
      _inputs = [];
    } else if (s == '.') {
      _processAsDecimal();
    } else if (_operators.contains(s)) {
      _processAsOperator(s);
    } else if (int.tryParse(s) != null) {
      _processAsNumber(s);
    } else if (s == '=') {
      _calculate();
    }
  }

  /// gets last operator or number value
  String get _last => _inputs.last;

  /// processes input as decimal and changes display
  void _processAsDecimal() {
    // if no prior inputs
    if (_inputs.isEmpty) {
      return;
    } else if (int.tryParse(_last) != null) {
      _replaceLast('$_last.');
    }
  }

  void _replaceLast(String s) => _inputs[_inputs.length - 1] = s;

  /// edits display based on input number and previous data in display
  void _processAsNumber(String s) {
    // if no prior input
    if (_inputs.isEmpty) {
      _inputs.add(s);
    } else if (_operators.contains(_last)) {
      _inputs.add(s);
    } else if (_last == '0') {
      if (s != '0') _replaceLast(s);
    }
    // last may be non-decimal int, trailing decimal number or decimal number
    else {
      _replaceLast('$_last$s');
    }
  }

  /// edits display based on input operator and previous data in display
  void _processAsOperator(String s) {
    // if no prior inputs
    if (_inputs.isEmpty) {
      return;
    } else if (_operators.contains(_last)) {
      return;
    } else if (double.tryParse(_last) != null) {
      _inputs.add(s);
    }
  }

  /// calculates score using _inputs
  void _calculate() {
    // last was not number
    if (double.tryParse(_last) == null) return;
    // multiply, modulus, divide first
    do {
      for (int i = 0; i < _inputs.length - 1;) {
        if (!_operators.contains(_last)) i++;
        if (_inputs[i] == '×') {
          _inputs.replaceRange(
            i - 1,
            i + 2,
            [
              (double.parse(_inputs[i - 1]) * double.parse(_inputs[i + 1]))
                  .toString()
            ],
          );
        } else if (_inputs[i] == '÷') {
          _inputs.replaceRange(
            i - 1,
            i + 2,
            [
              (double.parse(_inputs[i - 1]) / double.parse(_inputs[i + 1]))
                  .toString()
            ],
          );
        } else if (_inputs[i] == '%') {
          _inputs.replaceRange(
            i - 1,
            i + 2,
            [
              (double.parse(_inputs[i - 1]) % double.parse(_inputs[i + 1]))
                  .toString()
            ],
          );
        }
      }
      // +, – later
      for (int i = 0; i < _inputs.length - 1;) {
        if (!_operators.contains(_last)) i++;
        if (_inputs[i] == '+') {
          _inputs.replaceRange(
            i - 1,
            i + 2,
            [
              (double.parse(_inputs[i - 1]) + double.parse(_inputs[i + 1]))
                  .toString()
            ],
          );
        } else if (_inputs[i] == '–') {
          _inputs.replaceRange(
            i - 1,
            i + 2,
            [
              (double.parse(_inputs[i - 1]) - double.parse(_inputs[i + 1]))
                  .toString()
            ],
          );
        }
      }
    } while (_inputs.length != 1);
  }
}
