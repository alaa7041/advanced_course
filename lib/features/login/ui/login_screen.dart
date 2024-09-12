import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../core/theming/styles.dart';
import '../../../core/widgets/app_button.dart';
import '../logic/cubit/login_cubit.dart';
import 'widget/Login_bloc_listener.dart';
import 'widget/email_and_password.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Welcome Back", style: TextStyles.font24BlueBold),
                verticalSpace(8),
                Text(
                    "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                    style:
                        TextStyles.font14GreyRegular.copyWith(fontSize: 12.sp)),
                verticalSpace(36),
                Column(
                  children: [
                    const EmailAndPassword(),
                    Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: Text("Forget Password",
                            style: TextStyles.font10BlueRegular)),
                    verticalSpace(40),
                    AppButton(
                        onPressed: () {
                          validateThenDoLogin(context);
                        },
                        textStyle: TextStyles.font16WhiteMedium,
                        buttonText: "Login"),
                    const LoginBlocListener(),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void validateThenDoLogin(BuildContext context) {
  if (context.read<LoginCubit>().formKey.currentState!.validate()) {
    context.read<LoginCubit>().emitLogin();
  }
}
//alaa2407@gmail.com
//Alaa2407#Mm