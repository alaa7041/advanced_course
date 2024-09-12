import 'package:advanced_course/core/helpers/app_regex.dart';
import 'package:advanced_course/core/helpers/spacing.dart';
import 'package:advanced_course/core/widgets/app_text_form_field.dart';
import 'package:advanced_course/features/login/ui/widget/password_validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../logic/cubit/login_cubit.dart';

class EmailAndPassword extends StatefulWidget {
  const EmailAndPassword({super.key});

  @override
  State<EmailAndPassword> createState() => _EmailAndPasswordState();
}

class _EmailAndPasswordState extends State<EmailAndPassword> {
   bool hasLowerCase = false;
   bool hasUpperCase = false;
   bool hasNumber= false;
   bool hasSpecialCharacter= false;
   bool hasMinLength = false;
  late TextEditingController passwordController;
  bool isObscureText = true;

   @override
   void initState() {
     super.initState();
     passwordController = context.read<LoginCubit>().passwordController;
     setupPasswordControllerListener();
   }

   void setupPasswordControllerListener() {
     passwordController.addListener(() {
       setState(() {
         hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
         hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
         hasSpecialCharacter =
             AppRegex.hasSpecialCharacter(passwordController.text);
         hasNumber = AppRegex.hasNumber(passwordController.text);
         hasMinLength = AppRegex.hasMinLength(passwordController.text);
       });
     });
   }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return 'Please enter a valid email';
              }
            },
            controller: context.read<LoginCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<LoginCubit>().passwordController,
            hintText: "password",
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "Please Enter valid password";
              }
            },
            isObscureText: isObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: Icon(
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
          ),
          verticalSpace(10),
          PasswordValidation(
            hasLowerCase: hasLowerCase,
            hasNumber: hasNumber,
            hasSpecialCharacter: hasSpecialCharacter,
            hasUpperCase: hasUpperCase,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }
  //
  //  @override
  // void dispose() {
  //    passwordController.dispose();
  //    super.dispose();
  //  }
}