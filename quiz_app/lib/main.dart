import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(QuizApplication());
}

class AnswerButton extends ElevatedButton {
  int answerNum;
  AnswerButton({onPressed, child, style, @required this.answerNum})
      : super(
          onPressed: onPressed,
          child: Text('Answer ${answerNum}'),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.teal)),
        );

  @override
  Widget build(BuildContext context) {
    return this;
  }
}

class QuizApplication extends StatelessWidget {
  void onAnswerClick(int answerNumber) {
    print('clicked on ${answerNumber}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          title: Text('Quiz Application'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('A question goes here'),
              AnswerButton(
                answerNum: 1,
                child: Text('Custom answer'),
                onPressed: () => onAnswerClick(1),
              ),
              AnswerButton(
                answerNum: 2,
                child: Text('Custom answer'),
                onPressed: () => onAnswerClick(2),
              ),
              AnswerButton(
                answerNum: 3,
                child: Text('Custom answer'),
                onPressed: () => onAnswerClick(3),
              ),
              AnswerButton(
                answerNum: 4,
                child: Text('Custom answer'),
                onPressed: () => onAnswerClick(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
