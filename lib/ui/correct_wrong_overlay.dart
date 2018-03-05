import 'package:flutter/material.dart';
import 'dart:math';

class CorrectWrongOverlay extends StatefulWidget {

  final bool _isCorrect;

  CorrectWrongOverlay(this._isCorrect);

  @override
  State<StatefulWidget> createState() => new CorrectWrongOverlayState();
}

class CorrectWrongOverlayState extends State<CorrectWrongOverlay>
    with SingleTickerProviderStateMixin {

  Animation<double> _iconAnimation;
  AnimationController _iconAnimationController;

  @override
  void initState() {
    super.initState();
    _iconAnimationController =
    new AnimationController(duration: new Duration(seconds: 2), vsync: this);
    _iconAnimation = new CurvedAnimation(
        parent: _iconAnimationController, curve: Curves.elasticOut);
    _iconAnimation.addListener(() => this.setState(() {}));
    _iconAnimationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    IconData icon = widget._isCorrect ? Icons.done : Icons.clear;
    String label = widget._isCorrect ? "Correct" : "Wrong";

    return new Material(
      color: Colors.black54,
      child: new InkWell(
        onTap: () => print("Tapped on overlay"),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                  color: Colors.white, shape: BoxShape.circle),
              margin: new EdgeInsets.only(bottom: 20.0),
              child: new Transform.rotate(
                angle: _iconAnimation.value * 2 * PI,
                child: new Icon(icon, size: 80.0,),
              ),
            ),
            new Text(label,
              style: new TextStyle(
                  color: Colors.white, fontSize: _iconAnimation.value * 30.0),)
          ],
        ),
      ),
    );
  }
}