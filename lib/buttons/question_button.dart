import 'package:flutter/material.dart';
import 'package:personality_test/buttons/answer_button.dart';
import 'package:personality_test/data/questions.dart';
import 'package:personality_test/models/answers.dart';
import 'package:personality_test/models/question.dart';

class QuestionButton extends StatelessWidget{

  final int questionNumber;
  final void Function(Category) answer;
  //final void Function(Answers selectedAnswer) updateScore;

  const QuestionButton({required this.questionNumber, required this.answer, super.key, });

  
  @override
  Widget build(Object context) {
    
    Question currentQuestion = questions[questionNumber];
    List<Answers> shuffledAnswers = currentQuestion.getShuffledAnswers();
    
    return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          spacing: 5,
          children: [
            Padding(
              padding: 
                const EdgeInsets.all(30.0),
              child: 
                Text(
                  style: TextStyle(color: Colors.white, fontSize: 20), 
                  currentQuestion.question
                ),
            ),

            //...currentQuestion.getShuffledAnswers().map(),

            /*...shuffledAnswers.map((answerOption) {
            return AnswerButton(
              shuffledAnswers: shuffledAnswers,
              answer: answer,
              category: answerOption.category, 
              questionNumber: questionNumber, 
              answerNumber: shuffledAnswers.indexOf(answerOption),
            );
          }).toList(),*/

            AnswerButton(shuffledAnswers: shuffledAnswers,questionNumber: questionNumber, answerNumber: 0, answer: answer, category: questions[questionNumber].answers[0].category,),
            //SizedBox(height: 5,),
            AnswerButton(shuffledAnswers: shuffledAnswers,questionNumber: questionNumber, answerNumber: 1, answer: answer, category: questions[questionNumber].answers[1].category,),
            //SizedBox(height: 5,),
            AnswerButton(shuffledAnswers: shuffledAnswers,questionNumber: questionNumber, answerNumber: 2, answer: answer, category: questions[questionNumber].answers[2].category,),
            //SizedBox(height: 5,),
            AnswerButton(shuffledAnswers: shuffledAnswers,questionNumber: questionNumber, answerNumber: 3, answer: answer, category: questions[questionNumber].answers[3].category,),

            /*ElevatedButton(onPressed: (){}, style:
              ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
              ), child: Text(questions[questionNumber].answers[1].text),
            ),

            ElevatedButton(onPressed: (){}, style:
              ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
              ), child: Text(questions[questionNumber].answers[2].text),
            ),

            ElevatedButton(onPressed: (){}, style:
              ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.deepPurple,
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 40,
                ),
              ), child: Text(questions[questionNumber].answers[3].text),
            ),*/

            
          ]
      );
  }
}