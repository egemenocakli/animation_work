import 'package:animation_work/base/constants/app_border_radius.dart';
import 'package:animation_work/base/constants/app_constants.dart';
import 'package:animation_work/base/constants/app_edge_insets.dart';
import 'package:animation_work/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class TextFieldWidget extends StatelessWidget {
  final String? textTitle;
  final String? textHint;
  final TextInputType? keyboardType;
  final TextEditingController? textController;
  final Function? onChanged;
  final FormFieldValidator<String>? validator;
  final widgetKey;
  final FormFieldSetter<String>? onSaved;
  final VoidCallback? onTap;
  final bool? textInputEnabled;
  final Icon? textFieldIcon;

  const TextFieldWidget(
      {Key? key,
      this.textTitle,
      this.textHint,
      this.keyboardType,
      this.textController,
      this.onChanged,
      this.validator,
      this.widgetKey,
      this.onSaved,
      this.textInputEnabled,
      this.onTap,
      this.textFieldIcon
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          textTitle!,
          style: context.headerTextStyle
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          child: TextFormField(
            enabled: textInputEnabled,
            key: widgetKey,
            onSaved: onSaved,
            validator: validator,
            controller: textController,
            keyboardType: keyboardType,
            onChanged: (text) {
            if (onChanged != null) {
              onChanged!(text);
            }},
            style: context.textFieldStyle,
            decoration: InputDecoration(
              errorStyle: TextStyle(
                wordSpacing: AppLetterSpacing.leterSpacingLarge,
                fontSize: AppFontSize.fontSizeValidator.sp,
                height: AppHeight.heightValidator.h,
                fontWeight: FontWeight.bold,
                color: AppColors.errorTextColor,
              ),
              suffixIcon: SizedBox(height: AppSizes.sizeXLarge.h,width: AppSizes.sizeXLarge.w,child: InkWell(child: textFieldIcon,onTap: onTap)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: AppBorderRadius.circularLarge(),
                  borderSide:  BorderSide(color: Colors.teal.shade800)),
              border: OutlineInputBorder(
                  borderRadius: AppBorderRadius.circularLarge(),
                  borderSide: const BorderSide(color: Colors.indigo)),
              contentPadding: AppEdgeInsets.avarage(),
              hintText: textHint,
              hintStyle: context.hintTextStyle
            ),
          ),
        ),
        SizedBox(
          height: AppSizes.sizeMedium.h,
        ),
      ],
    );
  }
}
