import 'package:advanced_course/core/theming/styles.dart';
import 'package:advanced_course/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../core/routing/routes.dart';
import 'widgets/doc_image_and_text.dart';
import 'widgets/doc_logo_and_name.dart';
import 'widgets/get_started_button.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: Column(
            children: [
              const DocLogoAndName(),
              SizedBox(height: 10.h),
              const DocImageAndText(),
              Padding(
                padding:  EdgeInsets.symmetric(vertical: 0.w,horizontal: 20.w),
                child: Column(
                  children: [
                    Text(
                      "Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.",
                      style: TextStyles.font13GreyRegular,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 30.h),
                  ],
                ),
              ),
               GetStartedButton(
                 onTap: (){
                   Navigator.pushNamed(context, Routes.loginScreen);
                 },
               ),
            ],
          ),
        ),
      ),
    );
  }
}
