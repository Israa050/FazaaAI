import 'package:flutter/material.dart';
import 'colors.dart';

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

  
static TextStyle font20RedBold = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w700,
  color: Color(
    0xffDC2626,
  ),
);

static TextStyle font18BlackSemiBold = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

static TextStyle font16BlackSemiBold = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w600,
  color: Colors.black,
);

static TextStyle font14GreyRegular = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  color: Color(0xFF4B5563),
);

static TextStyle font12GreyRegular = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  color: Color(0xFF4B5563),
);

}

