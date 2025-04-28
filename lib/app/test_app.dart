//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personality_test/data/questions.dart';
import 'package:personality_test/screens/questions_screen.dart';
import 'package:personality_test/screens/result_screen.dart';
import 'package:personality_test/screens/start_screen.dart';
import 'package:personality_test/models/answers.dart';
//import 'package:flutter/foundation.dart' as flutter_foundation; // Prefix for the Flutter Category
//import 'package:flutter/foundation.dart' hide Category; // Hiding Category from Flutter's package

class TestApp extends StatefulWidget{
  const TestApp({super.key});
  
  @override
  State<TestApp> createState() {
    return _TestAppState();
  }
}

class _TestAppState extends State<TestApp>{
  String activeScreenName = 'start-screen';
  int answersNum = 0;
  int questionNumber = 0;
  
  Map<Category, int> score = {
    Category.Thinker: 0,
    Category.Feeler: 0,
    Category.Adventurer: 0,
    Category.Planner: 0,
  };

   void startQuiz(){
      setState(() {
        activeScreenName = 'quiz-screen';
      });
    }

    /*void updateScore(){
      if(selectedAnswer.category == Category.Thinker){
          score[Category.Thinker] = score[Category.Thinker]! + 1;
        }
        else if(selectedAnswer.category == Category.Adventurer){
          score[Category.Adventurer] = score[Category.Adventurer]! + 1;
        }
        else if(selectedAnswer.category == Category.Feeler){
          score[Category.Feeler] = score[Category.Feeler]! + 1;
        }
        else if(selectedAnswer.category == Category.Planner){
          score[Category.Planner] = score[Category.Planner]! + 1;
        }
    }*/

    void answer(Category category){
      //Answers selectedAnswer;
      if (answersNum == questions.length-1) {
        activeScreenName = 'result-screen';
        setState(
          () {}
        );
      }
      setState(() {
        if(category == Category.Thinker){
          score[Category.Thinker] = score[Category.Thinker]! + 1;
        }
        else if(category == Category.Adventurer){
          score[Category.Adventurer] = score[Category.Adventurer]! + 1;
        }
        else if(category == Category.Feeler){
          score[Category.Feeler] = score[Category.Feeler]! + 1;
        }
        else if(category == Category.Planner){
          score[Category.Planner] = score[Category.Planner]! + 1;
        }
        questionNumber++;
        answersNum++;
        });
      }
    

    void restart(){
      setState(() {
        answersNum = 0;
        questionNumber = 0;
        activeScreenName = 'start-screen';
        score[Category.Thinker] = 0;
        score[Category.Adventurer] = 0;
        score[Category.Feeler] = 0;
        score[Category.Planner] = 0;
      });
    }

  @override
  Widget build( BuildContext context) {
    Widget activeScreen = StartScreen(startQuiz);
    if (activeScreenName == 'quiz-screen') {
      activeScreen = QuestionsScreen(questionNumber: questionNumber, answer: answer);
    }
    
    if (activeScreenName == 'result-screen') {
      activeScreen = ResultScreen(restart: restart,score: score,);
    }

    return Scaffold(backgroundColor: const Color.fromARGB(255, 33, 72, 94),
      body: activeScreen,
    );
  }
}

