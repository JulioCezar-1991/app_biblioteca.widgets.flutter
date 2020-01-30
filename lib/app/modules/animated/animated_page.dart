import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AnimatedPage extends StatefulWidget {
  final String title;
  const AnimatedPage({Key key, this.title = "Animated"}) : super(key: key);

  @override
  _AnimatedPageState createState() => _AnimatedPageState();
}

class _AnimatedPageState extends State<AnimatedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: ListView(
          children: <Widget>[
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AnimatedButton"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/button');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AnimatedCrossFade"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/cross');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Dismissible"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/dismissible');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("DragTarget"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/drog');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AnimatedIcons"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/icons');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AnimatedRotationTransition"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/rotation');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AnimatedSize"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/size');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("StaggerAnimation"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/stagger');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("AnimatedSwitcher"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/animated/switcher');
              },
            ),
          ],
        ),
      ),
    );
  }
}
