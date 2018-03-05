import 'package:flutter/material.dart';
import 'quiz_page.dart';

class LandingPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new Material(
      color: Colors.greenAccent,
      child: new InkWell(
        onTap: () => _navigateToQuizPage(context),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Let's Quizz", style: new TextStyle(color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.bold)),
            new Text("Tap to start", style: new TextStyle(color: Colors.white,
                fontSize: 20.0,
                fontWeight: FontWeight.bold))
          ],
        ),
      ),
    );
  }

  void _navigateToQuizPage(BuildContext context) {
    Navigator.of(context)
        .push(new MaterialPageRoute(
        builder: (BuildContext context) => new QuizPage()));
  }
}