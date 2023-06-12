import 'dart:math';
import 'package:quizzly/models/quiz_model.dart';
sealed class QuizData {
  static List<Quiz> levelOne() {
    List<Quiz> result = [];
    List<String> operators = ['+', '-', '*', '/'];
    for (int i = 0; i < 10; i++) {
      operators.shuffle();
      String operator = operators[0];
      int intOne = Random().nextInt(5) + 1;
      int intTwo = Random().nextInt(5) + 1;
      num trueanswer = operator == '+' ? intOne + intTwo : (operator == '-'
          ? intOne - intTwo
          : (operator == '*' ? intOne * intTwo : intOne / intTwo));
      List<num> answer = [
        trueanswer,
        Random().nextInt(25) + 1,
        Random().nextInt(25) + 1,
        Random().nextInt(25) + 1
      ];
      answer.shuffle();
      result.add(
        Quiz(
          operator: operators[0],
          numOne: intOne,
          numTwo: intTwo,
          answers: answer,
          trueAnswer: trueanswer,
          second: 1000,
        ),
      );
    }
    return result;
  }


  static List<Quiz> levelTwo() {
    List<Quiz> result = [];
    List<String> operators = ['+', '-', '*', '/'];
    for (int i = 0; i < 10; i++) {
      operators.shuffle();
      String operator = operators[0];
      int intOne = Random().nextInt(10) + 1;
      int intTwo = Random().nextInt(10) + 1;
      num trueanswer = operator == '+' ? intOne + intTwo : (operator == '-'
          ? intOne - intTwo
          : (operator == '*' ? intOne * intTwo : intOne / intTwo));
      List<num> answer = [
        trueanswer,
        Random().nextInt(100) + 1,
        Random().nextInt(100) + 1,
        Random().nextInt(100) + 1
      ];
      answer.shuffle();
      result.add(
        Quiz(
          operator: operators[0],
          numOne: intOne,
          numTwo: intTwo,
          answers: answer,
          trueAnswer: trueanswer,
          second: 20,
        ),
      );
    }
    return result;
  }

  static List<Quiz> levelThree() {
    List<Quiz> result = [];
    List<String> operators = ['+', '-', '*', '/'];
    for (int i = 0; i < 10; i++) {
      operators.shuffle();
      String operator = operators[0];
      int intOne = Random().nextInt(20) + 1;
      int intTwo = Random().nextInt(20) + 1;
      num trueanswer = operator == '+' ? intOne + intTwo : (operator == '-'
          ? intOne - intTwo
          : (operator == '*' ? intOne * intTwo : intOne / intTwo));
      List<num> answer = [
        trueanswer,
        Random().nextInt(400) + 1,
        Random().nextInt(400) + 1,
        Random().nextInt(400) + 1,
      ];
      answer.shuffle();
      result.add(
        Quiz(
          operator: operators[0],
          numOne: intOne,
          numTwo: intTwo,
          answers: answer,
          trueAnswer: trueanswer,
          second: 10,
        ),
      );
    }
    return result;
  }
}