import 'package:flutter/material.dart';


class Result extends StatelessWidget {
final int resultScore;
final Function resetQuiz;

Result(this.resultScore,this.resetQuiz);

String get resultPhrase {
  String resultText;
  if (resultScore <=8 ) {
    resultText = 'You are awesome and innocent!!';
  }else if(resultScore <=12) {
    resultText = 'You are Cool!!';
  }else if(resultScore <=16) {
    resultText = 'You are ...Strange?!';
  }else{
    resultText = 'You are so bad in this!!';
  }

  return resultText;
}

  @override
  Widget build(BuildContext context) {
    return Center(
            child: Column(
              children: <Widget>[
                Text(resultPhrase,
                style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
                ),
                FlatButton(onPressed: resetQuiz, 
                textColor: Colors.blue,
                child: Text('Restart Quiz'))
              ],
            ),
    );
  }
}