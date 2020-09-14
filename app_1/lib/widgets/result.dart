import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetQuiz;
  Result(this.score, this.resetQuiz);

  String get resultPhrase {
    if (score <= 10) {
      return 'Not a good result!';
    } else if (10 < score && score <= 50) {
      return ' you did well!';
    } else if (score > 50) {
      return 'wow you are really a star!';
    } else {
      return 'Sorry, try again!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.only(top: 100, bottom: 30),
              child: Icon(
                Icons.language,
                color: Colors.green[800],
                size: 100,
              )),
          Text(
            ' your SCORE: $score',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 20, color: Colors.blueGrey),
          ),
          SizedBox(
            height: 30,
          ),
          FlatButton.icon(
            onPressed: resetQuiz,
            icon: Icon(Icons.arrow_forward),
            label: Text('Try Again!'),
            splashColor: Colors.amber[200],
            color: Colors.pink[400],
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18.0),
                side: BorderSide(color: Colors.purple[200])),
          ),
        ],
      ),
    );
  }
}
