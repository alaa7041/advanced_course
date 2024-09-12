import 'package:advanced_course/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppButton extends StatelessWidget {
  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? buttonHeight,buttonWidth;
  final String buttonText;
  final TextStyle textStyle;
  final VoidCallback onPressed;

  const AppButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.buttonHeight,
      required this.buttonText,
      required this.textStyle,
      required this.onPressed, this.buttonWidth});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius??16.0),
          )
        ),
        backgroundColor: WidgetStateProperty.all(
          backgroundColor?? ColorsManger.mainBlue
        ),
        padding: WidgetStateProperty.all<EdgeInsets>(
          EdgeInsets.symmetric(
            vertical: verticalPadding??6.w,
            horizontal: horizontalPadding??7.h
          ),
        ),
        fixedSize: WidgetStateProperty.all(
          Size(buttonWidth??double.maxFinite, buttonHeight??40.h)
        )
      ),
      onPressed: onPressed,
      child: Text(
        buttonText,
        style: textStyle,
      ),
    );
  }
}
