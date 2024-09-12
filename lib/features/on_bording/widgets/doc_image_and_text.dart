import 'package:advanced_course/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DocImageAndText extends StatelessWidget {
  const DocImageAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 150.h,
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Colors.white.withOpacity(0.0),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.topCenter,
                    stops: const [0.14, 0.14])),
            child: Image.asset("assets/images/on_borading_doc_image.png"),
          ),
        ),
        Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
                height: 300.h,
                child: SvgPicture.asset(
                  "assets/images/Linear_Effect.svg",
                  height: 250.h,
                ))),
        Positioned(
          top: 490,
          left: 20,
          right: 20,
          child: Text(
            "Best Doctor\nAppointment App",
            textAlign: TextAlign.center,
            style: TextStyles.font24BlueBold.copyWith(height: 1.4),
          ),
        ),
      ],
    );
  }
}
