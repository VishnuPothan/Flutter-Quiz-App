import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  var resultText = 'You did it';

  Result(this.resultScore , this.resetHandler);

  String get resultPhrase{
    if(resultScore > 16){
      resultText = 'You are Awesome';
    }else if(resultScore > 10){
      resultText = 'You are Okay';
    }else if(resultScore < 10){
      resultText = 'You are Worth less';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 30 , fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(onPressed: resetHandler, child: Text("Reset Quiz", style: TextStyle(color: Colors.blue),))
        ]
      )
    );
  }
}
