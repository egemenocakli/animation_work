import 'package:flutter/material.dart';
import 'app_constants.dart';

class AppBorderRadius extends BorderRadius {
  AppBorderRadius.circularLarge() : super.circular(AppSizes.sizeLarge);
  AppBorderRadius.circularXSmall() : super.circular(AppSizes.sizeXSmall);
  AppBorderRadius.circularSmall() : super.circular(AppSizes.sizeSmall);
  AppBorderRadius.circularXXLarge() : super.circular(65);

  const AppBorderRadius.only({
    Radius topLeft = Radius.zero,
    Radius bottomRight = Radius.zero,
    Radius topRight = Radius.zero,
    Radius bottomLeft = Radius.zero,
  }) : super.only(
            topLeft: topLeft,
            bottomRight: bottomRight,
            topRight: topRight,
            bottomLeft: bottomLeft);
}

class AppBorderRadiusSize {
  static const Radius borderRadiusSizeMedium = Radius.circular(45);
  static const Radius borderRadiusSizeLarge = Radius.circular(65);
  static const Radius borderRadiusSizeSmall = Radius.circular(17);
}
