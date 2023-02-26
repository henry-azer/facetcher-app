import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

import 'app_colors.dart';
import 'app_strings.dart';

class AppTextStyle with Diagnosticable {
  static TextStyle? snackbar = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.fontPrimary,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );

  static TextStyle? splashText = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );

  static TextStyle? homeText = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.white,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );
  static TextStyle? profileText = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );
  static TextStyle? profileNiceText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );

  static TextStyle? profileFieldText = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );

  static TextStyle? userProfileTitle = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    color: AppColors.grey,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );
  static TextStyle? userProfileDetails = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w700,
    color: AppColors.white,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );

  static TextStyle? loginDetailsText = TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
      color: AppColors.grey,
      fontFamily: AppStrings.fontFamilyBarlow,
      height: 1.2);

  static TextStyle? drawingDetailsFieldTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColors.grey,
    fontFamily: AppStrings.fontFamilyBarlow,
  );
  static TextStyle? screensTitle = TextStyle(
      fontSize: 35,
      fontWeight: FontWeight.w700,
      color: AppColors.white,
      fontFamily: AppStrings.fontFamilyComfortaa,
      wordSpacing: 5);

  static TextStyle? screensTitleDetails = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w400,
    color: AppColors.grey,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );

  static TextStyle? drawingDetailsField = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color: AppColors.grey,
    fontFamily: AppStrings.fontFamilyBarlow,
  );

  static TextStyle? navigatorItem = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w700,
    color: AppColors.navigatorFont,
    fontFamily: AppStrings.fontFamilyComfortaa,
  );

  static TextStyle? loginText = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
    color: AppColors.white,
    fontFamily: AppStrings.fontFamilyComfortaa,
    height: 1,
  );
}
