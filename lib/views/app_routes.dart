import 'package:flutter/cupertino.dart';
import 'package:quizzly/screens/answer_screen.dart';
import 'package:quizzly/screens/intro_screen.dart';
import 'package:quizzly/screens/quiz_screen.dart';

bool isAuth = false;

class AppRoutes {
  AppRoutes._();

  static String? get initialRoute => IntroScreen.id;

  static final routes = {
    IntroScreen.id : (context) => const IntroScreen(),
    QuizScreen.id : (context) => const QuizScreen(),
    AnswerScreen.id : (context) => const AnswerScreen(),
  };
  static void goToIntro(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(context, IntroScreen.id, ModalRoute.withName("/"));
  }
}