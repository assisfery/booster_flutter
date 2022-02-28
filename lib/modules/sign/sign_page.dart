import 'package:booster/modules/sign/sign_controller.dart';
import 'package:booster/shared/themes/app_colors.dart';
import 'package:booster/shared/themes/app_inputs.dart';
import 'package:booster/shared/themes/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../shared/themes/app_buttons.dart';

class SignPage extends StatelessWidget {
  const SignPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = SignController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 24),
          child: Center(
              child: Text(
            "Sign",
            style: AppTexts.titleBody,
          )),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: TextField(
            decoration: AppInputs.primary("Name"),
          ),
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
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: TextField(
            decoration: AppInputs.primary("Re-enter password"),
            obscureText: true,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text("Sign In"),
          style: AppButtons.primary,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: TextButton(
            onPressed: () {
              controller.loginScreen(context);
            },
            child: Text("Already have a account? Login here"),
            style: AppButtons.secondary,
          ),
        ),
      ]),
    );
  }
}
