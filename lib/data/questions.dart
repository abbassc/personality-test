import 'package:personality_test/models/answers.dart';
import 'package:personality_test/models/question.dart';

const questions = [
  Question(
    'How do you approach a difficult decision?', 
    [
      Answers('Analyze all options logically', Category.Thinker),
      Answers('Go with what feels right emotionally', Category.Feeler),
      Answers('Make a checklist and plan it out', Category.Planner),
      Answers('Take a leap and deal with results later', Category.Adventurer),
    ],
  ), 

  Question(
    'What excites you the most?',
    [
      Answers('Solving complex problems', Category.Thinker),
      Answers('Connecting deeply with others', Category.Feeler),
      Answers('Creating a clear path to your goals', Category.Planner),
      Answers('Exploring something new', Category.Adventurer),
    ],
  ),
  
  Question(
    'Which best describes your work style?',
    [
      Answers('Detail-focused and logical', Category.Thinker),
      Answers('People-centered and intuitive', Category.Feeler),
      Answers('Organized and systematic', Category.Planner),
      Answers('Flexible and spontaneous', Category.Adventurer),
    ],
  ),
  
  Question(
    'How do you recharge after a long day?',
    [
      Answers('Quiet reflection or reading', Category.Thinker),
      Answers('Spending time with close friends', Category.Feeler),
      Answers('Planning tomorrows tasks', Category.Planner),
      Answers('Doing something active or exciting', Category.Adventurer),
    ],
  ),
  
  Question(
    'You are most comfortable when...',
    [ 
      Answers('Things make logical sense', Category.Thinker),
      Answers('Everyone is getting along', Category.Feeler),
      Answers('There is a clear structure', Category.Planner),
      Answers('You are free to try new things', Category.Adventurer),
    ],
  ),
  
  Question(
    'Your biggest strength is...',
    [  
      Answers('Thinking critically', Category.Thinker),
      Answers('Empathizing with others', Category.Feeler),
      Answers('Staying organized', Category.Planner),
      Answers('Being adventurous', Category.Adventurer),
    ],
  )
];


  









