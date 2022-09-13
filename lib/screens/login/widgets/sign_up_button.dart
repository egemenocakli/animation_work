import 'package:animation_work/base/constants/app_constants.dart';
import 'package:animation_work/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String? textTitle;

  const SignUpButton({Key? key, this.onTap, this.textTitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      
      onTap: onTap,
      child: Container(
        height: AppSizes.sizeXXLarge.h,
        width: context.width.w,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppSizes.sizeLarge.r),
          color: const Color.fromARGB(162, 0, 0, 0),
        ),
        child: Center(
          child: Text(
            textTitle!,
            style: context.buttonTextStyle
          ),
        ),
      ),
    );
  }
}