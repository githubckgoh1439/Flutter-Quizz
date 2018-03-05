import 'package:flutter/material.dart';

class QuestionText extends StatefulWidget {

  final int _questionNumber;
  final String _question;

  QuestionText(this._questionNumber, this._question);

  @override
  State createState() => new QuestionTextState();
}

class QuestionTextState extends State<QuestionText> {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.white,
      child: new Padding(
        padding: new EdgeInsets.symmetric(vertical: 20.0),
        child: new Center(
          child: new Text(
              "Statement ${widget._questionNumber}: ${widget._question}"),
        ),
      ),
    );
  }
}