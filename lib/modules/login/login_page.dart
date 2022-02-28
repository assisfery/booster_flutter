import 'package:booster/shared/themes/app_colors.dart';
import 'package:booster/shared/themes/app_inputs.dart';
import 'package:booster/shared/themes/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/themes/app_buttons.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Center(
              child: Text(
            "Login",
            style: AppTexts.titleBody,
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: TextField(
            decoration: AppInputs.primary("Email"),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: TextField(
            decoration: AppInputs.primary("Password"),
            obscureText: true,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Login"),
          style: AppButtons.primary,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: TextButton(
            onPressed: () {},
            child: Text("Dont have a account? Sign In"),
            style: AppButtons.secondary,
          ),
        ),
      ]),
    );
  }
}
