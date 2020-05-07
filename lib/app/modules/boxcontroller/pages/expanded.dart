import 'package:flutter/material.dart';

class ExpandedExample extends StatefulWidget {
  @override
  _ExpandedExampleState createState() => _ExpandedExampleState();
}

class _ExpandedExampleState extends State<ExpandedExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Expanded")),
      body: Center(
          child: Container(
        decoration: BoxDecoration(border: Border.all(color: Colors.blue)),
        width: 330,
        height: 200,
        child: Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                width: 60,
                height: 170,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.blue)),
                  width: 60,
                  height: 170,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.purple)),
                width: 60,
                height: 170,
              ),
            ),
          ],
        ),
      )),
    );
  }
}
