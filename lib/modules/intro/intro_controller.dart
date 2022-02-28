import 'package:flutter/cupertino.dart';

class IntroController
{
  void getStarted(BuildContext context)
  {
    Navigator.pushReplacementNamed(context, "/login");
  }
}