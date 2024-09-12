import 'package:advanced_course/core/theming/colors.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final InputBorder? focusedBorder;
  final InputBorder? enabledBorder;
  final TextStyle? inputTextStyle;
  final TextStyle? hintStyle;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final Color? backgroundColor;
  final TextEditingController? controller;
  final Function(String) validator;

  AppTextFormField(
      {this.controller,
      required this.validator,
      this.contentPadding,
      this.focusedBorder,
      this.enabledBorder,
      this.inputTextStyle,
      this.hintStyle,
      required this.hintText,
      this.isObscureText,
      this.suffixIcon,
      this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          isDense: true,
          contentPadding: contentPadding ??
              EdgeInsets.symmetric(horizontal: 15.w, vertical: 12.h),
          focusedBorder: focusedBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorsManger.mainBlue,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16.r)),
          enabledBorder: enabledBorder ??
              OutlineInputBorder(
                  borderSide: const BorderSide(
                    color: ColorsManger.lighterGrey,
                    width: 1.3,
                  ),
                  borderRadius: BorderRadius.circular(16.r)),
          hintStyle: hintStyle ??
              TextStyles.font14LightGrayRegular.copyWith(fontSize: 12.sp),
          hintText: hintText,
          suffixIcon: suffixIcon,
          fillColor: backgroundColor ?? ColorsManger.moreLightGray,
          filled: true),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium.copyWith(fontSize: 12.sp),
      validator: (value){
        return validator!(value!);
      },
    );
  }
}
