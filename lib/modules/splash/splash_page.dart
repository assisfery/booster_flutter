import 'package:booster/modules/splash/splash_controller.dart';
import 'package:booster/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

import '../../shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final controller = SplashController();
    controller.nextScreen(context);

    return Scaffold(
      backgroundColor: AppColors.background,
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.favicon, height: 128,))
      ]),
    );
  }
}