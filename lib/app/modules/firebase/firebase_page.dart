import 'package:flutter/material.dart';

class FirebasePage extends StatefulWidget {
  final String title;
  const FirebasePage({Key key, this.title = "Firebase"}) : super(key: key);

  @override
  _FirebasePageState createState() => _FirebasePageState();
}

class _FirebasePageState extends State<FirebasePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
