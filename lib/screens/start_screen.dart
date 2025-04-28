import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget{

  final Function startQuiz;

  const StartScreen(this.startQuiz, {super.key});
    
    @override
    Widget build(BuildContext context){

      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30), "Discover Your Personality Type!"),
            ),
            SizedBox(height: 10,),
            Text("💖  🗺️\n📅  🧠", style: TextStyle(fontSize: 30),),
            SizedBox(height: 30,),
            ElevatedButton(onPressed: (){startQuiz();}, child: Text(style: TextStyle(color: Colors.deepPurple), 'Start Test'),),
          ],
        ),
      );
    }
}


