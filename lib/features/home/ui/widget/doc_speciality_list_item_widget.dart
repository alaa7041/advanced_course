import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocSpecialityListItemWidget extends StatelessWidget {
  const DocSpecialityListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection:  Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: ColorsManger.lightGrey,
                child: Image.asset("assets/images/doctor.png"),
              ),
              verticalSpace(5.h),
              Text("Doctor"),
            ],
          ),);
        },
        itemCount: 8,
      ),
    );
  }
}
