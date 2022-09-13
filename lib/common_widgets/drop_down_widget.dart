import 'package:animation_work/base/constants/app_constants.dart';
import 'package:animation_work/utils/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DropDownWidget extends StatefulWidget {
  final String? textTitle;
  final List<String>? list;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final String? dropDownValue;

  const DropDownWidget(
      {Key? key,
      this.textTitle,
      this.list,
      this.validator,
      this.onSaved,
      this.dropDownValue})
      : super(key: key);
  @override
  _DropDownWidgetState createState() => _DropDownWidgetState();
}

class _DropDownWidgetState extends State<DropDownWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.textTitle!,
          style: context.headerTextStyle,
        ),
        SizedBox(
          height: AppSizes.sizeXSmall.h,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusCircular.r),
            border: Border.all(
                color: AppColors.borderColorBlack),
          ),
          child: DropdownButtonFormField<String>(
            value: widget.dropDownValue,
            onSaved: widget.onSaved,
            validator: widget.validator,
            dropdownColor: AppColors.backgroundColor,
            style:
                TextStyle(color: AppColors.textTitleGrey),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(
                left: AppSizes.sizeSmall.w,
                right: AppSizes.sizeSmall.w,
              ),
              hintStyle: context.hintTextStyle,
            ),
            items: widget.list!.map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(
                  value,
                  style: context.dropDownWidgetInsideListTextTheme
                ),
              );
            }).toList(),
            onChanged: (String? item) {},
            hint: Text(
              widget.list![0],
              style: context.dropDownWidgetInsideListTextTheme
            ),
          ),
        ),
      ],
    );
  }
}
