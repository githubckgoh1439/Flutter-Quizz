import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    String answerLabel = _answer ? "True" : "False";
    Color answerBackgroundColor = _answer ? Colors.greenAccent : Colors
        .redAccent;

    return new Expanded(
      child: new Material(
        color: answerBackgroundColor,
        child: new InkWell(
          onTap: () => _onTap(),
          child: new Center(
            child: new Text(
              answerLabel,
              style: new TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30.0),
            ),
          ),
        ),
      ),
    );
  }
}