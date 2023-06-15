
import 'package:flutter/material.dart';
import 'package:quizzly/controllers/answer_controller.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/strings.dart';
import 'package:quizzly/services/constants/text_styles.dart';
import 'package:quizzly/services/l10n/app_localizations.dart';

class ScoreWidget extends StatelessWidget {
  final AnswerController controller;

  const ScoreWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    return Container(
      width: 175,
      height: 175,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.cFFFFFF.withOpacity(0.2),
      ),
      child: Container(
        width: 140,
        height: 140,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.cFFFFFF.withOpacity(0.3),
        ),
        child: Container(
          width: 120,
          height: 120,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.cFFFFFF,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
               controller.l10n.score,
                style: AppTextStyles.dmsans20.copyWith(
                  color: AppColors.cA42FC1,
                ),
              ),
              Text(
                "${controller.yourScore}",
                style: AppTextStyles.dmsans28.copyWith(
                  color: AppColors.cA42FC1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
