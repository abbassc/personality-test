import 'package:flutter/material.dart';
import 'package:personality_test/buttons/question_button.dart';
import 'package:personality_test/data/questions.dart';
import 'package:personality_test/models/answers.dart';
import 'package:personality_test/models/question.dart';

class QuestionsScreen extends StatelessWidget{

  final void Function(Category) answer;
  final int questionNumber;

  const QuestionsScreen({super.key, required this.answer, required this.questionNumber});

  @override
  Widget build(BuildContext context) {

    Question currentQuestion = questions[questionNumber];
    List<Answers> shuffledAnswers = currentQuestion.getShuffledAnswers();

    return Center(
      child: QuestionButton(questionNumber: questionNumber, answer: answer),
    );
  }
}