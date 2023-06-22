import 'package:flutter/cupertino.dart';
import 'package:quizzly/controllers/quiz_controller.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/text_styles.dart';
import 'package:quizzly/services/extention/localization_ext.dart';
import 'package:quizzly/views/quiz_widget/timer.dart';

class QuizStat extends StatefulWidget {
  final QuizController controller;

  const QuizStat({
    super.key,
    required this.controller,
  });

  @override
  State<QuizStat> createState() => _QuizStatState();
}

class _QuizStatState extends State<QuizStat> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .75,
      height: MediaQuery.of(context).size.height * .27,
      margin: EdgeInsets.only(
          left: MediaQuery.of(context).size.width * .125,
          top: MediaQuery.of(context).size.height * .07),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width * .75,
              height: MediaQuery.of(context).size.height * .23,
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: AppColors.cFBECFF,
                    offset: const Offset(0, 4),
                    blurRadius: 4,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "${context.lang.question} ${(widget.controller.currentQuiz + 1).toString().padLeft(2, "0")}/${widget.controller.dataQuiz.length}",
                    style: AppTextStyles.dmsans14.copyWith(
                      color: AppColors.cAC00D7,
                    ),
                  ),
                  const SizedBox(height: 35),
                  Text(
                    "${widget.controller.quiz.numOne}  ${widget.controller.quiz.operator}  ${widget.controller.quiz.numTwo} = ?",
                    style: AppTextStyles.dmsans16,
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 80,
              width: 80,
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                shape: BoxShape.circle,
              ),
              child: widget.controller.quiz.second == 1000
                  ? Container(
                      decoration: BoxDecoration(
                        color: widget.controller.quiz.second == 1000
                            ? AppColors.cD014FF
                            : AppColors.cFFFFFF,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        CupertinoIcons.infinite,
                        color: AppColors.cFFFFFF,
                        size: 30,
                      ),
                    )
                  : TimerSeconds(
                      controller: widget.controller,
                      color: AppColors.cD014FF,
                      second: widget.controller.quiz.second,
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
