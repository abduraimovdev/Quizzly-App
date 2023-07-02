import 'dart:math';
import 'package:quizzly/models/quiz_model.dart';
sealed class QuizData {
  static List<Quiz> levelOne() {
    List<Quiz> result = [];
    List<String> operators = ['+', '-', '*', '/'];
    for (int i = 0; i < 10; i++) {
      operators.shuffle();
      String operator = operators[0];
      int numOne = Random().nextInt(5) + 1;
      int numTwo = Random().nextInt(5) + 1;
      int trueanswer = operator == '+' ? numOne + numTwo : (operator == '-'
          ? numOne - numTwo
          : (operator == '*' ? numOne * numTwo : numOne ~/ numTwo));
      List<int> answer = [
        trueanswer,
        Random().nextInt(25) + 1,
        Random().nextInt(25) + 1,
        Random().nextInt(25) + 1
      ];
      answer.shuffle();
      result.add(
        Quiz(
          operator: operators[0],
          numOne: numOne,
          numTwo: numTwo,
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
      int numOne = Random().nextInt(10) + 1;
      int numTwo = Random().nextInt(10) + 1;
      int trueanswer = operator == '+' ? numOne + numTwo : (operator == '-'
          ? numOne - numTwo
          : (operator == '*' ? numOne * numTwo : numOne ~/ numTwo));
      List<int> answer = [
        trueanswer,
        Random().nextInt(100) + 1,
        Random().nextInt(100) + 1,
        Random().nextInt(100) + 1
      ];
      answer.shuffle();
      result.add(
        Quiz(
          operator: operators[0],
          numOne: numOne,
          numTwo: numTwo,
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
      int numOne = Random().nextInt(20) + 1;
      int numTwo = Random().nextInt(20) + 1;
      int trueanswer = operator == '+' ? numOne + numTwo : (operator == '-'
          ? numOne - numTwo
          : (operator == '*' ? numOne * numTwo : numOne ~/ numTwo));
      List<int> answer = [
        trueanswer,
        Random().nextInt(400) + 1,
        Random().nextInt(400) + 1,
        Random().nextInt(400) + 1,
      ];
      answer.shuffle();
      result.add(
        Quiz(
          operator: operators[0],
          numOne: numOne,
          numTwo: numTwo,
          answers: answer,
          trueAnswer: trueanswer,
          second: 10,
        ),
      );
    }
    return result;
  }
}