import 'package:flutter/material.dart';

class LoginController {
  void signScreen(BuildContext context) async {
    Navigator.pushReplacementNamed(context, "/sign-in");
  }

  void login(BuildContext context, String username, String Password) {
    if (username == "admin") {
      Navigator.pushReplacementNamed(context, "/home");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Email or password invalid!'),
      ));
    }
  }

  String? validateEmail(String? value) {
    if (value == null || value == "") return "Pease enter the email";

    return null;
  }
}
