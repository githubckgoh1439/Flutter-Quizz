import 'package:flutter/material.dart';
import '../ui/answer_button.dart';
import '../ui/question_text.dart';

class QuizPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new QuizPageState();
}

class QuizPageState extends State {

  @override
  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => print("You tapped on true")),
            new QuestionText(1, "Pizza is nice"),
            new AnswerButton(false, () => print("You tapped on false"))
          ],
        ),
      ],
    );
  }
}