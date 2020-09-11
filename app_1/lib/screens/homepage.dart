import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var questionIndex = 0;

  void answerQuestion() {
    print('Answer Chosen!');
    questionIndex++;
    print('INDEX  = $questionIndex');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite Colour?',
      'What\'s  your favourite animal?',
      'What\'s  your favourite sweet?',
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Project One'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(questions[questionIndex]), // stateless
            RaisedButton(
                child: Text('Answer1'),
                onPressed: answerQuestion, // pointer
                color: Colors.green[300]),
            RaisedButton(
                child: Text('Answer2'),
                onPressed: () => answerQuestion(),
                color: Colors.pink[300]),
            RaisedButton(
                child: Text('Answer3'),
                onPressed: () {
                  answerQuestion();
                  print('Answer 3');
                },
                color: Colors.blue[300]),
          ],
        ),
      ),
    );
  }
}
