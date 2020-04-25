import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int questionIndex;
  final Function answeredAQuestion;

  Quiz({
    @required this.questions,
    @required this.questionIndex,
    @required this.answeredAQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: <Widget>[
        Question(questions[questionIndex]['questionText']),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>).map((answer) {

          return Answer( () => answeredAQuestion(answer['score']) , answer['text']);        //Passing a anonymous function to pass the Parameter along as only Name varible does not used to send the parameter
          
        }).toList()
      ],
    );
  }
}
