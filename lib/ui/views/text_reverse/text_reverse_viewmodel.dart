import 'package:stacked/stacked.dart';

class TextReverseViewModel extends FormViewModel {
  String _inputText = '';
  String _reversedText = '';

  String get inputText => _inputText;
  String get reversedText => _reversedText;

  void setInputText(String text) {
    _inputText = text;
    _reversedText = text.split('').reversed.join('');
    notifyListeners();
  }

  bool validateText() {
    if (_inputText.contains(RegExp(r'[0-9]'))) {
      return false;
    }
    return true;
  }
}

class TextReverseValidators {
  static String? validateReverseText(String? value) {
    if (value == null) {
      return null;
    }

    if (value.contains(RegExp(r'[0-9]'))) {
      return 'No numbers allowed';
    }
    return null;
  }
}
