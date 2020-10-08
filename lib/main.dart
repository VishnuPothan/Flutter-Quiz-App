import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var question = [
      'Whats your favourite Color?',
      'Whats your favourite Animal?'
    ];
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text("The Auto City"),),
        body: Column(
          children: [
            Text('The Question'),
            RaisedButton(child: Text("Answer 1"), onPressed: null),
            RaisedButton(child: Text("Answer 2"), onPressed: null),
            RaisedButton(child: Text("Answer 3"), onPressed: null),
          ],
        ),
      ),
    );
  }

}