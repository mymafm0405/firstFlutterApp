import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String currentQuestion;

  Question(this.currentQuestion);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: double.infinity,
      child: Text(
        currentQuestion,
        style: TextStyle(fontSize: 24),
        textAlign: TextAlign.center,
      ),
    );
  }
}
