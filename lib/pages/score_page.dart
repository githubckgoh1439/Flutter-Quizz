import 'package:flutter/material.dart';
import 'landing_page.dart';

class ScorePage extends StatelessWidget {

  final int _score;
  final int _numberOfQuestions;

  ScorePage(this._score, this._numberOfQuestions);

  @override
  Widget build(BuildContext context) {
    return new Material(
        color: Colors.blueAccent,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("Your score is",
                style: new TextStyle(color: Colors.white, fontSize: 30.0)),
            new Text("$_score/$_numberOfQuestions",
                style: new TextStyle(color: Colors.white, fontSize: 30.0)),
            new IconButton(icon: new Icon(Icons.arrow_right),
              onPressed: () => _showLandingPage(context),
              iconSize: 40.0,
              color: Colors.white,)
          ],
        )
    );
  }

  void _showLandingPage(BuildContext context) {
    Navigator.of(context)
        .pushAndRemoveUntil(new MaterialPageRoute(
        builder: (BuildContext context) => new LandingPage()), (
        Route route) => route == null);
  }
}