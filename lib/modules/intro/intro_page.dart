import 'package:booster/modules/intro/intro_controller.dart';
import 'package:booster/shared/themes/app_buttons.dart';
import 'package:booster/shared/themes/app_images.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/themes/app_texts.dart';

class IntroPage extends StatelessWidget {
  IntroPage({Key? key}) : super(key: key);

  final slides = [
    Column(children: [
      SvgPicture.asset(
        AppImages.intro1,
        height: 300,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 18),
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          textAlign: TextAlign.center,
        ),
      ),
    ]),
    Column(children: [
      SvgPicture.asset(
        AppImages.intro2,
        height: 300,
      ),
      const Padding(
        padding: EdgeInsets.symmetric(vertical: 18, horizontal: 12),
        child: Text(
          "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
          textAlign: TextAlign.center,
        ),
      ),
    ]),
  ];

  @override
  Widget build(BuildContext context) {

    var controller = IntroController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Center(
                  child: Text("Welcome to Booster", style: AppTexts.titleBody)),
            ),
            CarouselSlider(
              options:
                  CarouselOptions(height: 400.0, enableInfiniteScroll: false),
              items: [0, 1].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return slides[i];
                  },
                );
              }).toList(),
            ),
            TextButton(onPressed: () {
              controller.getStarted(context);
            }, child: Text("Get Started"), style: AppButtons.primary,)
          ],
        ),
      ),
    );
  }
  
}
