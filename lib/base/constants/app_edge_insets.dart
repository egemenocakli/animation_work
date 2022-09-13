import 'package:animation_work/base/constants/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppEdgeInsets extends EdgeInsets {
  const AppEdgeInsets.zero(int value) : super.all(0);
  AppEdgeInsets.only({
    int left = 0,
    int top = 0,
    int right = 0,
    int bottom = 0,
  }) : super.only(left: left.w, top: top.h, right: right.w, bottom: bottom.h);

  AppEdgeInsets.small() : super.all(AppSpacing.spacingSmall.w);
  AppEdgeInsets.medium() : super.all(AppSpacing.spacingMedium.w);
  AppEdgeInsets.avarage() : super.all(AppSpacing.spacingAvarage.w);
  AppEdgeInsets.large() : super.all(AppSpacing.spacingLarge.w);
  AppEdgeInsets.xlarge() : super.all(AppSpacing.spacingXLarge.w);

  AppEdgeInsets.symetricMedium()
      : super.symmetric(
            vertical: AppSpacing.spacingMedium.h,
            horizontal: AppSpacing.spacingMedium.w);
  AppEdgeInsets.symetricLarge()
      : super.symmetric(
            vertical: AppSpacing.spacingLarge.h,
            horizontal: AppSpacing.spacingLarge.w);
  AppEdgeInsets.symetricXLarge()
      : super.symmetric(
          vertical: AppSpacing.spacingXLarge.h,
          horizontal: AppSpacing.spacingXLarge.w,
        );
}

class AppEdgeInsetsSize {
  static const int edgeInsetsXSmall = 4;
  static const int edgeInsetsSmall = 10;
}
