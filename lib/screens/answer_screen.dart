import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:quizzly/controllers/answer_controller.dart';
import 'package:quizzly/models/quiz_model.dart';
import 'package:quizzly/services/constants/colors.dart';
import 'package:quizzly/services/constants/strings.dart';
import 'package:quizzly/views/answer_widget/asnwer_stats.dart';
import 'package:quizzly/views/answer_widget/score_widget.dart';
import 'package:quizzly/views/app_routes.dart';
import 'package:quizzly/views/quiz_widget/answer_button.dart';
import 'package:quizzly/views/quiz_widget/back_button.dart';
import 'package:quizzly/views/quiz_widget/body_widget.dart';
import 'package:quizzly/views/quiz_widget/bottom_sheet_widget.dart';
import 'dart:math';

class AnswerScreen extends StatefulWidget {
  static const id = "/answer";

  const AnswerScreen({Key? key}) : super(key: key);

  @override
  State<AnswerScreen> createState() => _AnswerScreenState();
}

class _AnswerScreenState extends State<AnswerScreen> {
  late final AnswerController controller;
  late final ConfettiController aniController;

  @override
  void initState() {
    // TODO: implement initState

    controller = AnswerController(updater: setState);
    aniController = ConfettiController(duration: const Duration(seconds: 3));
    aniController.play();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    controller.answers =
        ModalRoute.of(context)!.settings.arguments as List<Quiz>;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(
        height: MediaQuery.of(context).size.height * .45,
        subChild: Align(
          alignment: Alignment.topCenter,
          child: ConfettiWidget(
            confettiController: aniController,
            blastDirection: pi / 2,
            gravity: 0.01,
            colors: [
              AppColors.c1F8435,
              AppColors.cFA3939,
              AppColors.cFBECFF,
            ],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              ///
              AppBackButton(
                onPress: () => AppRoutes.goToIntro(context),
              ),
              Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 30),

                    ///
                    ScoreWidget(controller: controller),
                    const SizedBox(height: 30),

                    ///
                    AnswerStats(controller: controller),
                    const SizedBox(height: 30),

                    ///
                    AnswerButton(
                      onPress: () => controller.tryAgain(context),
                      label: Strings.play.text,
                    ),

                    ///
                    AnswerButton(
                      onPress: () => controller.gotoIntro(context),
                      label: Strings.home.text,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      ///
      bottomSheet: const BottomSheetWidget(),
    );
  }
}
