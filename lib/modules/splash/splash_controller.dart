import 'package:flutter/material.dart';

class SplashController{

  void nextScreen(BuildContext context) async
  {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, "/intro");
  }

}