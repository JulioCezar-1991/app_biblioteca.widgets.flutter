import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DecorationsPage extends StatefulWidget {
  final String title;
  const DecorationsPage({Key key, this.title = "Decorations"})
      : super(key: key);

  @override
  _DecorationsPageState createState() => _DecorationsPageState();
}

class _DecorationsPageState extends State<DecorationsPage> {
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
                child: Text("BackdropFilter"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/backdrop');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("ClipPath"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/clippath');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Gradient"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/gradient');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Radius"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/radius');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Shadow"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/decorations/shadow');
              },
            ),
          ],
        ),
      ),
    );
  }
}
