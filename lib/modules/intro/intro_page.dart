import 'package:booster/modules/intro/intro_controller.dart';
import 'package:booster/shared/themes/app_buttons.dart';
import 'package:booster/shared/themes/app_colors.dart';
import 'package:booster/shared/themes/app_images.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../shared/themes/app_texts.dart';

class IntroPage extends StatefulWidget {
  IntroPage({Key? key}) : super(key: key);

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {

  int currentSlide = 0;
  final CarouselController _carouselController = CarouselController();

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
      backgroundColor: AppColors.background,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 24.0),
              child: Center(
                  child: Text("Welcome to Booster", style: AppTexts.titleBody)),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: 400.0,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentSlide = index;
                    });
                  }),
              items: [0, 1].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return slides[i];
                  },
                );
              }).toList(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [0, 1].asMap().entries.map((entry) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      //currentSlide = entry.key;
                      //_carouselController.animateToPage(entry.key);
                    });
                  },
                  child: Container(
                    width: 12.0,
                    height: 12.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : Colors.black)
                            .withOpacity(
                                currentSlide == entry.key ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 18.0),
              child: TextButton(
                onPressed: () {
                  controller.getStarted(context);
                },
                child: Text("Get Started"),
                style: AppButtons.primary,
              ),
            )
          ],
        ),
      ),
    );
  }
}
