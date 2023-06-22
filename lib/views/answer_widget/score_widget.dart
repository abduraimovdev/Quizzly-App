
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:quizzly/controllers/answer_controller.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/text_styles.dart';
import 'package:quizzly/services/extention/localization_ext.dart';

class ScoreWidget extends StatelessWidget {
  final AnswerController controller;

  const ScoreWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      endRadius: 100,
      child: AvatarGlow(
        endRadius: 100,
        glowColor: Colors.white.withOpacity(1),
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
               context.lang.score,
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
