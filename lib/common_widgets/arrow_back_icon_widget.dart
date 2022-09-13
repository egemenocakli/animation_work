import 'package:animation_work/base/constants/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ArrowBackIconWidget extends StatelessWidget {
  const ArrowBackIconWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: AppSizes.appBarArrowBackSize,
                    width: AppSizes.appBarArrowBackSize,
                    decoration: BoxDecoration(
                      color: AppColors.backgroundColor,
                      borderRadius: BorderRadius.circular(AppSizes.appBarArrowBackRadiusVal.r),
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(left: AppElevation.elevationSmall.w),
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: AppSizes.sizeLarge.sm,
                        color: AppColors.textColorBlack,
                      ),
                    ),
                  ),
                );
  }
}