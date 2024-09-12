import 'package:advanced_course/core/helpers/extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';
import '../../logic/cubit/register_cubit.dart';
import '../../logic/cubit/register_state.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterCubit, RegisterState>(
      listenWhen:(previous, current) => current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(context: context,
              builder: (context) =>
              const Center(
                child: CircularProgressIndicator(
                  color: ColorsManger.mainBlue,),),);
          },
          success: (registerResponse){
            context.pop();
            showSuccessDialog(context);
          },
          error: (message) {
            context.pop();
            setupErrorState(context, message);
          }
        );
      },
      child: const SizedBox.shrink(),
    );
  }
}
void showSuccessDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Signup Successful'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Congratulations, you have signed up successfully!'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.blue, disabledForegroundColor: Colors.grey.withOpacity(0.38),
            ),
            onPressed: () {
              context.pushNamed(Routes.loginScreen);
            },
            child: const Text('Continue'),
          ),
        ],
      );
    },
  );
}

void setupErrorState(BuildContext context, String error) {
  context.pop();
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      icon: const Icon(
        Icons.error,
        color: Colors.red,
        size: 32,
      ),
      content: Text(
        error,
        style: TextStyles.font16WhiteMedium,
      ),
      actions: [
        TextButton(
          onPressed: () {
            context.pop();
          },
          child: Text(
            'Got it',
            style: TextStyles.font16WhiteMedium,
          ),
        ),
      ],
    ),
  );
}
