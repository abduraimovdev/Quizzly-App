import 'dart:math';

class Quiz {
  int id;
  int numOne;
  int numTwo;
  String operator;
  int second;
  List<num> answers;
  num trueAnswer;
  int answer = 0;

  Quiz({
    required this.operator,
    required this.numOne,
    required this.numTwo,
    required this.answers,
    required this.trueAnswer,
    required this.second,
  }) : id = Random().nextInt(1000);

  @override
  String toString() {
    return 'Quiz{id: $id, numOne: $numOne, numTwo: $numTwo, operator: $operator, second: $second, answers: $answers, trueAnswer: $trueAnswer, answer: $answer}';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Quiz &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          numOne == other.numOne &&
          numTwo == other.numTwo &&
          operator == other.operator &&
          second == other.second &&
          answers == other.answers &&
          trueAnswer == other.trueAnswer &&
          answer == other.answer;

  @override
  int get hashCode => Object.hash(
      id, numOne, numTwo, operator, second, answer, trueAnswer, answers);
}
