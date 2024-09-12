import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';

class DocVerticalListItemWidget extends StatelessWidget {
  const DocVerticalListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10.h),
              width: 50.w,
              height: 80.h,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15.r),
                    child: SizedBox(
                       height: 60.h,
                       width: 60.w,
                      child: Image(
                        height:60.h,
                        width: 70.w,
                        fit: BoxFit.scaleDown,
                        image: const AssetImage(
                          "assets/images/doctor.png",
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(10.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Title",style: TextStyles.font14BlackBold),
                        Text("subtitle",style: TextStyles.font11lightGrayRegular),
                        Text("4.3 | Reviews",style: TextStyles.font11lightGrayRegular),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
          itemCount: 5,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
