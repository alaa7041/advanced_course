import 'package:advanced_course/features/home/ui/widget/doc_speciality_list_item_widget.dart';
import 'package:advanced_course/features/home/ui/widget/doc_speciality_see_all_widget.dart';
import 'package:advanced_course/features/home/ui/widget/doc_vertical_list_item_widget.dart';
import 'package:advanced_course/features/home/ui/widget/home_banner_widget.dart';
import 'package:advanced_course/features/home/ui/widget/home_header_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(72.h),
          child: const HomeHeaderWidget(),
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 17.w),
              child: const Column(
                children: [
                  HomeBannerWidget(),
                  DocSpecialitySeeAllWidget(),
                  DocSpecialityListItemWidget(),
                  DocVerticalListItemWidget()
                ],
              )),
        ),
      ),
    );
  }
}
