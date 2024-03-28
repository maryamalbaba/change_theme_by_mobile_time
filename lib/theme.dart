import 'package:flutter/material.dart';

class themPageProvider with ChangeNotifier {
  bool _isLighEnable = true;

  bool get isLighEnable => _isLighEnable;

  set isLighEnable(bool value) {
    _isLighEnable = value;
  }

  changeMode() {
    if ((DateTime.now().minute >= 28)) {
      isLighEnable = false;
      notifyListeners();
    } else {
      isLighEnable = true;
      notifyListeners();
    }
  }
}
