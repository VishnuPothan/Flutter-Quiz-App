import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _quesIndex = 0;
  var _totalScore = 0;
  final _questionsAndAnswer = [

    {
      'question': 'What\'s your favourite Animal?',
      'answers': [{'text':'Blue' , 'score' : 10},{'text':'Dog', 'score' : 7} ,{'text':'Cow', 'score' : 0}, {'text':'Cat', 'score' : 6} ,{'text':'Elephant', 'score' : 6}]
    },
    {
      'question': 'What\'s your favourite Country?',
      'answers': [{'text':'India' , 'score' : 8},{'text':'Japan', 'score' : 10} ,{'text':'Switzerland', 'score' : 10}, {'text':'UK', 'score' : 0} ,{'text':'Israel', 'score' : 4}]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
    print(_quesIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: _quesIndex < _questionsAndAnswer.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _quesIndex,
                questions: _questionsAndAnswer,
              )
            : Result(_totalScore)
      ),
    );
  }
}
