import 'package:flutter/material.dart';

class TextRotatedBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RotatedBox"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RotatedBox(
              child: Text("Hello World!"),
              quarterTurns: 1,
            ),
            RotatedBox(
              child: Text("Hello World!"),
              quarterTurns: 2,
            ),
            RotatedBox(
              child: Text("Hello World!"),
              quarterTurns: 3,
            ),
            RotatedBox(
              child: Text("Hello World!"),
              quarterTurns: 4,
            ),
          ],
        ),
      ),
    );
  }
}