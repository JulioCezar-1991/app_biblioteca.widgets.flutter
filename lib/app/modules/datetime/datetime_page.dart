import 'package:app_flutter_biblioteca/app/components/custom_botton_widget.dart';
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
        child: ListView(
          children: <Widget>[
            CustomBotton(
              title: "Clock",
              onPressed: () {
                Modular.to.pushNamed('/home/datetime/clock');
              },
            ),
            CustomBotton(
              title: "Calendar",
              onPressed: () {
                Modular.to.pushNamed('/home/datetime/calendar');
              },
            ),
          ],
        ),
      ),
    );
  }
}
