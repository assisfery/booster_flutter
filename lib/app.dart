import 'package:booster/modules/home/home_page.dart';
import 'package:booster/modules/sign/sign_page.dart';
import 'package:booster/modules/splash/splash_page.dart';
import 'package:flutter/material.dart';

import 'modules/intro/intro_page.dart';
import 'modules/login/login_page.dart';

class App extends StatelessWidget {
  const App({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      initialRoute: "/",

      routes: {
        "/" : (context) => SplashPage(),
        "/intro" : (context) => IntroPage(),
        "/login" : (context) => LoginPage(),
        "/sign-in" : (context) => SignPage(),
        "/home" : (context) => HomePage()
      },

    );
  }
}