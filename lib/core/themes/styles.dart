import 'package:flutter/material.dart';
import 'package:salam_hack/core/themes/colors.dart';

abstract class TextStyles {
  static const TextStyle font14LightGrayRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: AppColors.lightGray,
  );

  static TextStyle font14DarkBlueMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w500,
    color: AppColors.moreDarkBlue,
  );

  static TextStyle font18WhiteBold = TextStyle(
    fontSize: 18,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
}
