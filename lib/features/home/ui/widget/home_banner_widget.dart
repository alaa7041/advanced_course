import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class HomeBannerWidget extends StatelessWidget {
  const HomeBannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 197.h,
      width: MediaQuery.of(context).size.width,
      child: Stack(fit: StackFit.expand, children: [
        SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 300.h,
            child: SvgPicture.asset("assets/images/home_background.svg")),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Book and\nschedule with\nnearest doctor",
                        style: TextStyles.font16WhiteMedium),
                    verticalSpace(7.h),
                    ElevatedButton(
                        onPressed: () {}, child: Text("Find Nearby",style: TextStyles.font12BlueRegular,))
                  ],
                ),
              ),
            ),
            Positioned(
              height: 100.h,
              width: 50.w,
              child: Image(
                image: const AssetImage("assets/images/nurse.png"),
                width: 115.w,
                height: 175.h,
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
