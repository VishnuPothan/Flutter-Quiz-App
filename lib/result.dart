import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  var resultText = 'You did it';
  Result(this.resultScore);

  String get resultPhrase{
    if(resultScore == 16){
      resultText = 'You are Awesome';
    }else if(resultScore > 10){
      resultText = 'You are Okay';
    }else if(resultScore < 0){
      resultText = 'You are Worth less';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Text(
        resultText,
        style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),),
    );
  }
}
