import 'package:flutter/cupertino.dart';
import 'package:quizzly/models/quiz_model.dart';
import 'package:quizzly/screens/answer_screen.dart';

class QuizController {
  /// This is Fields

  /// Updater
  void Function(void Function() fn) updater;

  /// Quizzes All Data
  late List<Quiz> dataQuiz;

  /// This is Current Quiz
  late Quiz quiz;

  /// this is Current Page Quiz Index
  int currentQuiz = 0;

  /// This is Page Second Animation Controller
  late final AnimationController animationController;

  /// This is Animated Event
  bool isAnimate = false;

  /// This is Constructor
  QuizController({required this.updater});


  /// Methods
  void changeQuiz(num? newAnswer, BuildContext context) {
    /// Next Quiz For ++
    currentQuiz++;

    /// This is Quiz Answer
    quiz.answer =
        newAnswer == null ? 0 : (newAnswer == quiz.trueAnswer ? 1 : 2);

    /// Quiz End ?
    if (currentQuiz >= dataQuiz.length) {
      Navigator.pushNamed(context, AnswerScreen.id, arguments: dataQuiz);
    } else {
      /// Quiz Not End !
      quiz = dataQuiz[currentQuiz];
      if (quiz.second != 1000) {
        isAnimate = true;
        animationController.reset();
        animationController.reverse(
          from: animationController.value == 0.0
              ? 1.0
              : animationController.value,
        );
      }
    }
    updater(() {});
  }

  /// This is When Second End Change Quiz
  void changer(AnimationStatus status, BuildContext context) {
    if (status == AnimationStatus.dismissed) {
      if (!isAnimate) {
        changeQuiz(null, context);
      }
      isAnimate = false;
      animationController.reverse(
        from:
            animationController.value == 0.0 ? 1.0 : animationController.value,
      );
    }
  }

  void dispose() {
    animationController.dispose();
  }
}
