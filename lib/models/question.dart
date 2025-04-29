import 'dart:math';

import 'package:personality_test/models/answers.dart';

class Question {

  final String question;
  final List<Answers> answers;

  const Question(this.question, this.answers);

  List<Answers> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }

}
