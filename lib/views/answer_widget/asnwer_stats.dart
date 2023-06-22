import 'package:flutter/material.dart';
import 'package:quizzly/controllers/answer_controller.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/text_styles.dart';
import 'package:quizzly/services/extention/localization_ext.dart';



class AnswerStats extends StatelessWidget {
  const AnswerStats({
    super.key,
    required this.controller,
  });

  final AnswerController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .8,
      height: 150,
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: AppColors.rgb,
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: AppColors.c1F8435,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "${controller.correct}",
                    style: AppTextStyles.dmsans20.copyWith(
                      color: AppColors.c1F8435,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: BoxDecoration(
                      color: AppColors.cFA3939,
                      shape: BoxShape.circle,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "${controller.wrong}",
                    style: AppTextStyles.dmsans20.copyWith(
                      color: AppColors.cFA3939,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const SizedBox(width: 40),
              Text(context.lang.correct, style: AppTextStyles.dmsans16,),
              const SizedBox(width: 10),
              Text(context.lang.wrong, style: AppTextStyles.dmsans16,),
              const SizedBox(),
            ],
          )
        ],
      ),
    );
  }
}
