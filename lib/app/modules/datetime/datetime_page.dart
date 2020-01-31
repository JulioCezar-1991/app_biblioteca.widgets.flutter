import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class DatetimePage extends StatefulWidget {
  final String title;
  const DatetimePage({Key key, this.title = "Datetime"}) : super(key: key);

  @override
  _DatetimePageState createState() => _DatetimePageState();
}

class _DatetimePageState extends State<DatetimePage> {
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
                child: Text("Calendar"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/datetime/calendar');
              },
            ),
            RaisedButton(
              child: Container(
                alignment: Alignment.center,
                child: Text("Clock"),
              ),
              onPressed: () {
                Modular.to.pushNamed('/home/datetime/clock');
              },
            ),
          ],
        ),
      ),
    );
  }
}
