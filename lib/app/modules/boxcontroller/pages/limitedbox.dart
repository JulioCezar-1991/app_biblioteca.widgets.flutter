import 'package:flutter/material.dart';

class LimitedBoxExample extends StatefulWidget {
  @override
  _LimitedBoxExampleState createState() => _LimitedBoxExampleState();
}

class _LimitedBoxExampleState extends State<LimitedBoxExample> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: Text("LimitedBox")),
      body: Container(
        child: ListView(
          children: <Widget>[
            for (var i = 0; i <= 50; i++)
              Column(
                children: <Widget>[
                  LimitedBox(
                      maxHeight: mediaQuery.height / 5,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          /* width: mediaQuery.width / 30, */
                          color: Colors.blue[800],
                        ),
                      )),
                  LimitedBox(
                    maxHeight: mediaQuery.height / 5,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        /* width: mediaQuery.width / 30, */
                        color: Colors.purple,
                      ),
                    ),
                  ),
                  LimitedBox(
                      maxHeight: mediaQuery.height / 5,
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Container(
                          /* width: mediaQuery.width / 30, */
                          color: Colors.pink,
                        ),
                      )),
                  LimitedBox(
                    maxHeight: mediaQuery.height / 5,
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Container(
                        /* width: mediaQuery.width / 30, */
                        color: Colors.red,
                      ),
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
