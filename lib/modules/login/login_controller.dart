import 'package:flutter/material.dart';

class LoginController {
  void signScreen(BuildContext context) async {
    Navigator.pushReplacementNamed(context, "/sign-in");
  }

  String? validateEmail(String? value) {
    if (value == null || value == "") return "Pease enter the email";

    return null;
  }
}
