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
                onPressed: () => print('Question 2!'),
                color: Colors.pink[300]),
            RaisedButton(
                child: Text('Answer3'),
                onPressed: () {
                  // lots of actions
                  print('Answer 3');
                },
                color: Colors.blue[300]),
          ],
        ),
      ),
    );
  }
}
