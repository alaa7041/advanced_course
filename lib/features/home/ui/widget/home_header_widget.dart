import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      width: MediaQuery.of(context).size.width,
      height: 55.h,
      child: Row(
        children: [
          Expanded(
              child: Padding(
            padding: EdgeInsets.only(top: 12.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hi, Alaa", style: TextStyles.font18BlackBold),
                Text("How Are you Today?",
                    style: TextStyles.font11lightGrayRegular)
              ],
            ),
          )),
          SizedBox(
              width: 20.w,
              height: 20.h,
              child: SvgPicture.asset("assets/images/notification_icon.svg")),
        ],
      ),
    );
  }
}
