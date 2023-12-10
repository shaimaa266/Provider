import 'package:flutter/material.dart';

class ProviderClass extends ChangeNotifier {

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  int counter = 0;
  bool _isChecked = false;
  bool _isObscurText = false;
  bool get isObsecuText => _isObscurText;
  set isObsecuText(bool newValue) {
    _isObscurText = newValue;
    notifyListeners();
  }

  bool get isChecked => _isChecked;

  set isChecked(bool newValue) {
    _isChecked = newValue;
    notifyListeners();
  }

  incrementFunction() {
    counter++;
    notifyListeners();
  }

  decrementFunction() {
    if (counter > 0) {
      counter--;
    }

    notifyListeners();
  }
}
