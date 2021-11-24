import 'package:flutter/material.dart';
import './question.dart';

var questions = [
  'What\'s your favourite color?',
  'What\'s your favourite animal?'
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  int currentIndex = 0;

  void answerQuestion() {
    setState(() {
      if (currentIndex == questions.length - 1) {
        currentIndex--;
      } else {
        currentIndex++;
      }
      print('Question answerd!');
      print(currentIndex);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First Mobile App'),
        ),
        body: Column(
          children: [
            Question(questions[currentIndex]),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
