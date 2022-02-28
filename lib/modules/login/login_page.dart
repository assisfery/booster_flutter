import 'package:booster/modules/login/login_controller.dart';
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

    final controller = LoginController();

    var emailController = TextEditingController();
    var passwordController = TextEditingController();

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
            controller: emailController,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
          child: TextField(
            decoration: AppInputs.primary("Password"),
            obscureText: true,
            controller: passwordController,
          ),
        ),
        TextButton(
          onPressed: () {
            print(emailController.text + "\n");
            print(passwordController.text + "\n\n\n");
          },
          child: Text("Login"),
          style: AppButtons.primary,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: TextButton(
            onPressed: () {
              controller.signScreen(context);
            },
            child: Text("Dont have a account? Sign In here"),
            style: AppButtons.secondary,
          ),
        ),
      ]),
    );
  }
}
