import 'package:flutter/material.dart';
import 'package:personality_test/data/questions.dart';
import 'package:personality_test/models/answers.dart';

class AnswerButton extends StatelessWidget{

  final int questionNumber;
  final int answerNumber;
  final Category category;
  final void Function(Category) answer;
  final List<Answers> shuffledAnswers;

  const AnswerButton({required this.questionNumber,required this.answerNumber, required this.answer, super.key, required this.category, required this.shuffledAnswers,});

  @override
  Widget build(BuildContext context) {

    return ElevatedButton(
      onPressed: () => answer(category), 
      style: 
        ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: Colors.deepPurple,
          side: BorderSide(color: Colors.deepPurpleAccent),
        ), child: Text(questions[questionNumber].answers[answerNumber].text),
        //child: Text(shuffledAnswers[answerNumber].text),
    );
  }
}