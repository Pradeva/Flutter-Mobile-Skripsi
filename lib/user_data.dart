import 'package:flutter/material.dart';

class UserData extends ChangeNotifier {
  String username = '';
  String password = '';

  void setUserData(String newUsername, String newPassword) {
    username = newUsername;
    password = newPassword;
    notifyListeners();
  }
}