import 'package:flutter/material.dart';
import 'package:personality_test/models/answers.dart';

class ResultScreen extends StatelessWidget{

  final void Function() restart;
  final Map<Category, int> score;
  
  const ResultScreen({super.key, required this.restart, required this.score});

  @override
  Widget build(BuildContext context) {

    //String category = '';
    Category category = Category.Thinker;
    int maxScore = 0;
    for(var element in score.entries){
      if(element.value > maxScore){
        category = element.key;
        maxScore = element.value;
      }    
    }

    return Center(
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(35.0),
              child: Text(
                style: TextStyle(color: Colors.white, fontSize: 15),
                 "${resultString[category]}",
                 ),
            ),

            ElevatedButton(
              onPressed: restart, 
              style: 
                ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.deepPurple,
                  side: BorderSide(color: Colors.deepPurpleAccent),
                  ), 
              child: Text('Restart Test'))
          ]
      ),
    );
  }
}