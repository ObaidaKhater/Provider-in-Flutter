import 'package:flutter/material.dart';

class TestProvider extends ChangeNotifier {
  String message = ' Obaida Ayman Khater\n858585858';

  changeMessage(String newMessage) {
    this.message = newMessage;
    notifyListeners();
  }
}
