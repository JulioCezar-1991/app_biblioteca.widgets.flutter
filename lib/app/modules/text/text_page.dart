import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TextPage extends StatefulWidget {
  final String title;
  const TextPage({Key key, this.title = "Text"}) : super(key: key);

  @override
  _TextPageState createState() => _TextPageState();
}

class _TextPageState extends State<TextPage> {
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
                child: Text("TextRotatedBox"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/text/rotated');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("TextSpan"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/text/span');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("TextUnderline"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/text/underline');
              },
            ),
          ],
        ),
      ),
    );
  }
}
