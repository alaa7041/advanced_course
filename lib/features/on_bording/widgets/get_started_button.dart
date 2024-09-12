import 'package:advanced_course/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/theming/styles.dart';

class GetStartedButton extends StatelessWidget {
 final  Function()? onTap;
  const GetStartedButton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: TextButton(
        style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(ColorsManger.mainBlue),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            minimumSize: WidgetStateProperty.all(const Size(double.infinity, 52)),
            shape: WidgetStateProperty.all(RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
            ))),
        onPressed: () {},
        child: Text(
          "Get Started",
          style: TextStyles.font16WhiteMedium,
        ),
      ),
    );
  }
}
