import 'package:flutter/material.dart';
import '../../../../core/theming/styles.dart';

class DocSpecialitySeeAllWidget extends StatelessWidget {
  const DocSpecialitySeeAllWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Text("Doctor Speciality",style: TextStyles.font14BlackBold,)),
        Text("See All",style: TextStyles.font12BlueRegular),
      ],
    );
  }
}
