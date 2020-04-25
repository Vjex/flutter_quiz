import 'package:flutter/material.dart';
import 'package:flutter_first/answer.dart';
import 'package:flutter_first/quiz.dart';
import 'package:flutter_first/result.dart';

import './quiz.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _counter = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _counter++;
    });
  }

  void _resetQuiz() {
    setState(() {
      _counter = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    //here value of final _question is   const not _question itself.

    {
      'questionText': 'What\'s your favouarte colour ?',
      'answers': [
        {'text': 'White', 'score': 1},
        {'text': 'Red', 'score': 6},
        {'text': 'Black', 'score': 10},
        {'text': 'Yellow', 'score': 4},
      ]
    },
    {
      'questionText': 'What\'s your favouarte animal ?',
      'answers': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'Horse', 'score': 6},
        {'text': 'Lion', 'score': 10},
        {'text': 'Dog', 'score': 4},
      ]
    },
    {
      'questionText': 'Who\'s your favouarte instructor ?',
      'answers': [
        {'text': 'Max-AcadeMind', 'score': 1},
        {'text': 'Vishal Verma', 'score': 4},
        {'text': 'Himanshi', 'score': 10},
        {'text': 'Akash', 'score': 6},
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('MyFlutter'),
          ),
          body: Center(
            child: _counter < _questions.length
                ? //Single if check
                Quiz(
                    questions: _questions,
                    questionIndex: _counter,
                    answeredAQuestion: _answerQuestion)
                : Result(_totalScore, _resetQuiz),
          )),
    );
  }
}
