import 'package:flutter/material.dart';

class LoginController{

  void signScreen(BuildContext context) async
  {
    Navigator.pushReplacementNamed(context, "/sign-in");
  }

}