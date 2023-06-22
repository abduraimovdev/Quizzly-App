import 'package:flutter/material.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/text_styles.dart';
import 'package:quizzly/services/l10n/app_localizations.dart';
class CustomWelcomeToQuizzly extends StatelessWidget {
  const CustomWelcomeToQuizzly({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
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
             l10n.welcome,
              style: AppTextStyles.dmsans28
                  .copyWith(color: AppColors.cAC00D7),
            ),
            const Spacer(flex: 1),
            Text(
             l10n.withs,
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
