import 'package:flutter/material.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/strings.dart';
import 'package:quizzly/services/constants/text_styles.dart';
class CustomWelcomeToQuizzly extends StatelessWidget {
  const CustomWelcomeToQuizzly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(left: 25, right: 25),
      child: Container(
        height: 205,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF.withOpacity(0.8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            const Spacer(flex: 3),
            Text(
              Strings.welcome.text,
              style: AppTextStyles.dmsans28
                  .copyWith(color: AppColors.cAC00D7),
            ),
            const Spacer(flex: 1),
            Text(
              Strings.withs.text,
              textAlign: TextAlign.center,
              style: AppTextStyles.dmsans22
                  .copyWith(color: AppColors.cAC00D7),
            ),
            const Spacer(flex: 3),
          ],
        ),
      ),
    );
  }
}
