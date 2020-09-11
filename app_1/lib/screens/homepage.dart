import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  void answerQuestion() {
    print('Answer Chosen!');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite Colour?',
      'What\'s  your favourite animal?'
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Project One'),
      ),
      body: Center(
        child: Column(
          children: [
            Text('The Question'),
            RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion, // pointer
                color: Colors.green[300]),
            RaisedButton(
                child: Text('Answer2'),
                onPressed: answerQuestion,
                color: Colors.pink[300]),
            RaisedButton(
                child: Text('Answer3'),
                onPressed: answerQuestion,
                color: Colors.blue[300]),
          ],
        ),
      ),
    );
  }
}
