import 'package:advanced_course/core/helpers/extentions.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../../../core/routing/routes.dart';
import '../../../../core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Already have an account?',
            style: TextStyles.font14GreyRegular,
          ),
          TextSpan(
            text: ' Login',
            style: TextStyles.font13BlueRegular,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
