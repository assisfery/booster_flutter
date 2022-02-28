import 'package:booster/shared/themes/app_colors.dart';
import 'package:flutter/material.dart';

class AppButtons {
  static final primary = ButtonStyle(
      backgroundColor: MaterialStateProperty.all(AppColors.primary),
      foregroundColor: MaterialStateProperty.all(Colors.white),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0),
        ),
      ),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 16, horizontal: 32))
      );


  static final secondary = ButtonStyle(
      foregroundColor: MaterialStateProperty.all(AppColors.primary),
      padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.symmetric(vertical: 16, horizontal: 32))
      );
}
