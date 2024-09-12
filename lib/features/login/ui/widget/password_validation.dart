import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/styles.dart';

class PasswordValidation extends StatelessWidget {
  final bool hasLowerCase;
  final bool hasUpperCase;
  final bool hasNumber;
  final bool hasSpecialCharacter;
  final bool hasMinLength;

  const PasswordValidation(
      {super.key,
      required this.hasLowerCase,
      required this.hasUpperCase,
      required this.hasNumber,
      required this.hasSpecialCharacter,
      required this.hasMinLength});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        buildValidationRow('At least 1 lowercase letter', hasLowerCase),
        verticalSpace(2),
        buildValidationRow('At least 1 uppercase letter', hasUpperCase),
        verticalSpace(2),
        buildValidationRow(
            'At least 1 special character', hasSpecialCharacter),
        verticalSpace(2),
        buildValidationRow('At least 1 number', hasNumber),
        verticalSpace(2),
        buildValidationRow('At least 8 characters long', hasMinLength),
      ],
    );
  }

  Widget buildValidationRow(String text, bool hasValidated) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 2.5,
          backgroundColor: Colors.grey,
        ),
        horizontalSpace(6),
        Text(
          text,
          style: TextStyles.font9BlueRegular.copyWith(
            decoration: hasValidated ? TextDecoration.lineThrough : null,
            decorationColor: Colors.green,
            decorationThickness: 2,
            color: hasValidated ? Colors.grey : Colors.blueAccent,
          ),
        )
      ],
    );
  }
}
