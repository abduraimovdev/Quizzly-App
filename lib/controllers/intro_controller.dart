import 'package:flutter/cupertino.dart';
import 'package:quizzly/screens/quiz_screen.dart';
import 'package:quizzly/services/data/database/quizzly.dart';

class IntroController {
  /// Fields
  void Function(void Function() fn) updater;


  /// Constructor
  IntroController({required this.updater});


  /// this is Methods
  static void Function(BuildContext context) currentLevel = buttonLevelOne;

  /// Level One Method
  static void buttonLevelOne(BuildContext context) {
    Navigator.of(context).pushNamed(QuizScreen.id, arguments: QuizData.levelOne());
    currentLevel = buttonLevelOne;
  }

  /// Level Two Method
  static void buttonLevelTwo(BuildContext context) {
    Navigator.of(context).pushNamed(QuizScreen.id, arguments: QuizData.levelTwo());
    currentLevel = buttonLevelTwo;
  }

  /// Level Three Method
  static void buttonLevelThree(BuildContext context) {
    Navigator.of(context).pushNamed(QuizScreen.id, arguments: QuizData.levelThree());
    currentLevel = buttonLevelThree;
  }
}