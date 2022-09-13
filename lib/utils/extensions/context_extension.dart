import 'package:animation_work/base/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension BuildContextExtension on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension TextStyleExtension on BuildContext {
  TextStyle get textStyle => Theme.of(this).textTheme.caption!.copyWith(
        letterSpacing: AppLetterSpacing.letterspacingXSmall,
        fontSize: AppFontSize.fontSizeLarge.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.backgroundColor,
      );
  TextStyle get hintTextStyle => Theme.of(this).textTheme.caption!.copyWith(
      letterSpacing: AppLetterSpacing.letterspacingXSmall,
      fontSize: AppFontSize.fontSizeAvarage.sp,
      color: Colors.blueGrey.shade300);
  TextStyle get dropDownWidgetInsideListTextTheme =>
      Theme.of(this).textTheme.caption!.copyWith(
          letterSpacing: AppLetterSpacing.letterspacingXSmall,
          fontSize: AppFontSize.fontSizeAvarage.sp,
          color: AppColors.textTitleGrey);
  TextStyle get headerTextStyle => Theme.of(this).textTheme.caption!.copyWith(
        letterSpacing: AppLetterSpacing.letterspacingXSmall,
        fontSize: AppFontSize.fontSizeValidator.sp,
        fontWeight: FontWeight.bold,
        color: Colors.indigo.shade200,
      );
  TextStyle get textFieldStyle => Theme.of(this).textTheme.caption!.copyWith(
      letterSpacing: AppLetterSpacing.letterspacingXSmall,
      fontSize: AppFontSize.fontSizeAvarage.sp,
      color: AppColors.borderColorBlack);
  TextStyle get buttonTextStyle => Theme.of(this).textTheme.caption!.copyWith(
        letterSpacing: AppLetterSpacing.letterspacingSmall,
        fontSize: AppFontSize.fontSizeMedium.sp,
        fontWeight: FontWeight.bold,
        color: AppColors.backgroundColor,
      );
}
