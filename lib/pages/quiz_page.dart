import 'package:flutter/material.dart';
import '../ui/answer_button.dart';
import '../ui/question_text.dart';
import '../ui/correct_wrong_overlay.dart';

class QuizPage extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => new QuizPageState();
}

class QuizPageState extends State {

  @override
  Widget build(BuildContext context) {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new Column(
          children: <Widget>[
            new AnswerButton(true, () => print("You tapped on true")),
            new QuestionText(1, "Pizza is nice"),
            new AnswerButton(false, () => print("You tapped on false"))
          ],
        ),
        new CorrectWrongOverlay(false)
      ],
    );
  }
}