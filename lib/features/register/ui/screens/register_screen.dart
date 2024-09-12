import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/core/widgets/app_button.dart';
import 'package:advanced_course/features/register/logic/cubit/register_cubit.dart';
import 'package:advanced_course/features/register/ui/widgets/register_bloc_listener.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/styles.dart';
import '../widgets/already_have_account_text.dart';
import '../widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Create Account", style: TextStyles.font24BlackBold),
                verticalSpace(8.h),
                Text(
                  'Sign up now and start exploring all that our app has to offer. We\'re excited to welcome you to our community!',
                  style: TextStyles.font14GreyRegular,
                ),
                verticalSpace(36),
                Column(
                  children: [
                    const RegisterForm(),
                    verticalSpace(40),
                    AppButton(
                      buttonText: "Register",
                      textStyle: TextStyles.font16WhiteMedium,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(16),
                    const AlreadyHaveAccountText(),
                    const RegisterBlocListener(),
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
void validateThenDoSignup(BuildContext context) {
  if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
    context.read<RegisterCubit>().emitRegisterStates();
  }
}