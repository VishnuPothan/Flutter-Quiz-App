import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main(){
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
  void _answerQuestion(){
    setState(() {
      _quesIndex = _quesIndex + 1;
    });
    print(_quesIndex);
  }
  @override
  Widget build(BuildContext context) {
    var questions = [
      {'question' : 'What\'s your favourite Color?',
       'answers': ['Blue','Red','Orange','White']
      },
      {'question' : 'What\'s your favourite Animal?',
        'answers': ['Hen','Cat','Dog','Monkey']
      },
      {'question' : 'What\'s your favourite Country?',
        'answers': ['India','Canada','japan','Switzerland']
      },
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("The Auto City"),),
        body: Column(
          children: [
            // Question(questions.elementAt(_quesIndex)),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
