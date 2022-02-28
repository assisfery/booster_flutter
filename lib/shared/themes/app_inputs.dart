import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppInputs
{
  static InputDecoration primary (String hintText)
  {
    return InputDecoration(
      hintText: hintText,
      border: const OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        // width: 0.0 produces a thin "hairline" border
        borderSide: BorderSide(color: AppColors.primary, width: 1),
      )
    );
  }
}